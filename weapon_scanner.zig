const std = @import("std");
const fs = std.fs;
const process = std.process;
const c = @cImport({
    @cInclude("sys/socket.h");
    @cInclude("linux/if_packet.h");
    @cInclude("linux/if_ether.h");
    @cInclude("net/if.h");
    @cInclude("unistd.h");
    @cInclude("xdp/xsk.h");
    @cInclude("linux/if_xdp.h");
    @cInclude("linux/if_link.h");
    @cInclude("string.h");
});

const ScanStatus = enum {
    pass,
    warn,
    fail,
    skip,
};

const Summary = struct {
    pass: usize = 0,
    warn: usize = 0,
    fail: usize = 0,
    skip: usize = 0,

    fn note(self: *Summary, status: ScanStatus) void {
        switch (status) {
            .pass => self.pass += 1,
            .warn => self.warn += 1,
            .fail => self.fail += 1,
            .skip => self.skip += 1,
        }
    }
};

const CommandResult = struct {
    ok: bool,
    exit_code: ?u8,
    stdout: []const u8,
    stderr: []const u8,
};

const EnvironmentScan = struct {
    is_root: bool = false,
    is_wsl2: bool = false,
    kernel: []const u8 = "unknown",
    has_btf: bool = false,
    has_bpftool: bool = false,
    has_clang: bool = false,
    has_libbpf: bool = false,
};

const NicScan = struct {
    interface_count: usize = 0,
    target_iface: ?[]const u8 = null,
    target_driver: ?[]const u8 = null,
    target_is_hv_netvsc: bool = false,
};

const XdpScan = struct {
    feature_query_ok: bool = false,
    skb_attach_ok: bool = false,
    native_attach_ok: bool = false,
};

const AfXdpScan = struct {
    umem_ok: bool = false,
    copy_ok: bool = false,
    zero_copy_ok: bool = false,
};

const DpdkScan = struct {
    hugepages_total: usize = 0,
    hugepages_mounted: bool = false,
    vfio_loaded: bool = false,
    iommu_present: bool = false,
    devbind_available: bool = false,
};

const FallbackScan = struct {
    af_packet_ok: bool = false,
};

const AfXdpProbeResult = struct {
    umem_ok: bool,
    umem_rc: i32,
    socket_rc: ?i32,
};

fn statusText(status: ScanStatus) []const u8 {
    return switch (status) {
        .pass => "ĐẠT",
        .warn => "CẢNH BÁO",
        .fail => "LỖI",
        .skip => "BỎ QUA",
    };
}

fn printStatus(summary: *Summary, writer: anytype, status: ScanStatus, label: []const u8, detail: []const u8) !void {
    summary.note(status);
    try writer.print("  [{s}] {s}: {s}\n", .{ statusText(status), label, detail });
}

fn printCommandExcerpt(writer: anytype, text: []const u8, max_lines: usize) !void {
    var iter = std.mem.tokenizeScalar(u8, text, '\n');
    var line_count: usize = 0;
    while (iter.next()) |line| {
        if (line.len == 0) continue;
        try writer.print("      {s}\n", .{line});
        line_count += 1;
        if (line_count >= max_lines) break;
    }
}

fn readSmallFile(allocator: std.mem.Allocator, path: []const u8, max_bytes: usize) ?[]const u8 {
    var file = fs.openFileAbsolute(path, .{}) catch return null;
    defer file.close();
    const bytes = file.readToEndAlloc(allocator, max_bytes) catch return null;
    return std.mem.trim(u8, bytes, " \r\n\t");
}

fn dirExists(path: []const u8) bool {
    var dir = fs.openDirAbsolute(path, .{}) catch return false;
    dir.close();
    return true;
}

fn fileExists(path: []const u8) bool {
    var file = fs.openFileAbsolute(path, .{}) catch return false;
    file.close();
    return true;
}

fn readLinkBasename(allocator: std.mem.Allocator, path: []const u8) ?[]const u8 {
    var buf: [fs.MAX_PATH_BYTES]u8 = undefined;
    const target = fs.cwd().readLink(path, &buf) catch return null;
    return allocator.dupe(u8, fs.path.basename(target)) catch null;
}

fn readLinkTarget(allocator: std.mem.Allocator, path: []const u8) ?[]const u8 {
    var buf: [fs.MAX_PATH_BYTES]u8 = undefined;
    const target = fs.cwd().readLink(path, &buf) catch return null;
    return allocator.dupe(u8, target) catch null;
}

fn countQueueEntries(iface: []const u8, prefix: []const u8) usize {
    var path_buf: [256]u8 = undefined;
    const path = std.fmt.bufPrint(&path_buf, "/sys/class/net/{s}/queues", .{iface}) catch return 0;
    var dir = fs.openDirAbsolute(path, .{ .iterate = true }) catch return 0;
    defer dir.close();

    var count: usize = 0;
    var iter = dir.iterate();
    while (iter.next() catch null) |entry| {
        if (std.mem.startsWith(u8, entry.name, prefix)) count += 1;
    }
    return count;
}

fn directoryHasEntries(path: []const u8) bool {
    var dir = fs.openDirAbsolute(path, .{ .iterate = true }) catch return false;
    defer dir.close();

    var iter = dir.iterate();
    return (iter.next() catch null) != null;
}

fn runShell(allocator: std.mem.Allocator, cmd: []const u8) ?CommandResult {
    const result = process.Child.run(.{
        .allocator = allocator,
        .argv = &[_][]const u8{ "/bin/sh", "-lc", cmd },
        .max_output_bytes = 64 * 1024,
    }) catch return null;

    var exit_code: ?u8 = null;
    var ok = false;
    switch (result.term) {
        .Exited => |code| {
            exit_code = code;
            ok = code == 0;
        },
        else => {},
    }

    return .{
        .ok = ok,
        .exit_code = exit_code,
        .stdout = result.stdout,
        .stderr = result.stderr,
    };
}

fn commandAvailable(allocator: std.mem.Allocator, command: []const u8) bool {
    const cmd = std.fmt.allocPrint(allocator, "command -v {s}", .{command}) catch return false;
    const result = runShell(allocator, cmd) orelse return false;
    return result.ok and result.stdout.len > 0;
}

fn resolveCommand(allocator: std.mem.Allocator, candidates: []const []const u8) ?[]const u8 {
    for (candidates) |candidate| {
        if (std.mem.startsWith(u8, candidate, "/")) {
            if (fileExists(candidate)) return candidate;
        } else if (commandAvailable(allocator, candidate)) {
            return candidate;
        }
    }
    return null;
}

fn errorNameForRc(rc: i32) []const u8 {
    if (rc >= 0) return "thành công";
    return std.mem.span(c.strerror(@intCast(-rc)));
}

fn parseHugePagesTotal(meminfo: []const u8) usize {
    if (std.mem.indexOf(u8, meminfo, "HugePages_Total:")) |start| {
        const line_end = std.mem.indexOfPos(u8, meminfo, start, "\n") orelse meminfo.len;
        const line = meminfo[start..line_end];
        var parts = std.mem.tokenizeAny(u8, line, " :\t");
        _ = parts.next();
        if (parts.next()) |count_text| {
            return std.fmt.parseInt(usize, count_text, 10) catch 0;
        }
    }
    return 0;
}

fn scanEnvironment(allocator: std.mem.Allocator, summary: *Summary, writer: anytype) !EnvironmentScan {
    var result = EnvironmentScan{};
    result.is_root = c.geteuid() == 0;
    result.kernel = readSmallFile(allocator, "/proc/sys/kernel/osrelease", 256) orelse "unknown";

    const version = readSmallFile(allocator, "/proc/version", 512) orelse "unknown";
    result.is_wsl2 = std.mem.indexOf(u8, version, "microsoft") != null or std.mem.indexOf(u8, version, "WSL2") != null;
    result.has_btf = fileExists("/sys/kernel/btf/vmlinux");
    result.has_bpftool = commandAvailable(allocator, "bpftool");
    result.has_clang = commandAvailable(allocator, "clang");
    result.has_libbpf = fileExists("/usr/include/bpf/libbpf.h") or fileExists("/usr/lib/x86_64-linux-gnu/libbpf.so") or fileExists("/lib/x86_64-linux-gnu/libbpf.so");

    try writer.print("[1] Quét môi trường\n", .{});
    try printStatus(summary, writer, .pass, "Hệ điều hành/kernel", result.kernel);
    try printStatus(summary, writer, if (result.is_root) .pass else .warn, "Đặc quyền", if (result.is_root) "đang chạy với quyền root; các phép thử attach/socket được bật" else "không chạy bằng root; một số phép thử attach/socket có thể bị bỏ qua hoặc thất bại");
    try printStatus(summary, writer, if (result.is_wsl2) .warn else .pass, "Môi trường chạy", if (result.is_wsl2) "phát hiện WSL2; kỳ vọng với XDP/AF_XDP/DPDK native sẽ bị giới hạn" else "đang chạy trên Linux native");
    try printStatus(summary, writer, if (result.has_btf) .pass else .warn, "BTF", if (result.has_btf) "có /sys/kernel/btf/vmlinux" else "không tìm thấy kernel BTF");
    try printStatus(summary, writer, if (result.has_bpftool) .pass else .warn, "bpftool", if (result.has_bpftool) "khả dụng" else "không có trong PATH");
    try printStatus(summary, writer, if (result.has_clang) .pass else .fail, "clang", if (result.has_clang) "khả dụng" else "không có trong PATH");
    try printStatus(summary, writer, if (result.has_libbpf) .pass else .warn, "libbpf", if (result.has_libbpf) "đã phát hiện header/thư viện" else "không tìm thấy header/thư viện libbpf ở vị trí chuẩn");
    try writer.print("\n", .{});
    return result;
}

fn scanNic(allocator: std.mem.Allocator, summary: *Summary, writer: anytype) !NicScan {
    var result = NicScan{};
    try writer.print("[2] Quét NIC\n", .{});

    var net_dir = fs.openDirAbsolute("/sys/class/net", .{ .iterate = true }) catch {
        try printStatus(summary, writer, .fail, "Giao diện mạng", "không mở được /sys/class/net");
        try writer.print("\n", .{});
        return result;
    };
    defer net_dir.close();

    var iter = net_dir.iterate();
    while (try iter.next()) |entry| {
        if (entry.name.len == 0) continue;
        result.interface_count += 1;

        const name = allocator.dupe(u8, entry.name) catch entry.name;
        var driver_path_buf: [256]u8 = undefined;
        const driver_path = std.fmt.bufPrint(&driver_path_buf, "/sys/class/net/{s}/device/driver", .{name}) catch "";
        const driver = if (driver_path.len > 0) readLinkBasename(allocator, driver_path) else null;

        var device_path_buf: [256]u8 = undefined;
        const device_path = std.fmt.bufPrint(&device_path_buf, "/sys/class/net/{s}/device", .{name}) catch "";
        const pci_path = if (device_path.len > 0) readLinkTarget(allocator, device_path) else null;

        var numa_path_buf: [256]u8 = undefined;
        const numa_path = std.fmt.bufPrint(&numa_path_buf, "/sys/class/net/{s}/device/numa_node", .{name}) catch "";
        const numa_text = if (numa_path.len > 0) readSmallFile(allocator, numa_path, 64) else null;
        const rx_queues = countQueueEntries(name, "rx-");
        const tx_queues = countQueueEntries(name, "tx-");

        const detail = std.fmt.allocPrint(
            allocator,
            "trình điều khiển={s}, rxq={d}, txq={d}, numa={s}, thiết bị={s}",
            .{
                driver orelse "unknown",
                rx_queues,
                tx_queues,
                numa_text orelse "unknown",
                pci_path orelse "n/a",
            },
        ) catch "không cấp phát được chuỗi mô tả";
        try printStatus(summary, writer, .pass, name, detail);

        const should_select = result.target_iface == null or
            std.mem.eql(u8, name, "eth0") or
            (result.target_iface != null and std.mem.eql(u8, result.target_iface.?, "lo") and !std.mem.eql(u8, name, "lo"));

        if (should_select) {
            result.target_iface = name;
            result.target_driver = driver;
            result.target_is_hv_netvsc = driver != null and std.mem.eql(u8, driver.?, "hv_netvsc");
        }
    }

    if (result.target_iface) |iface| {
        const detail = std.fmt.allocPrint(allocator, "giao diện mục tiêu cho các phép thử chủ động: {s} (trình điều khiển={s})", .{ iface, result.target_driver orelse "unknown" }) catch "không chọn được giao diện mục tiêu";
        try printStatus(summary, writer, if (std.mem.eql(u8, iface, "lo")) .warn else .pass, "Mục tiêu thử nghiệm", detail);
    } else {
        try printStatus(summary, writer, .fail, "Mục tiêu thử nghiệm", "không phát hiện giao diện nào dưới /sys/class/net");
    }

    try writer.print("\n", .{});
    return result;
}

fn compileBpfObject(allocator: std.mem.Allocator) ?[]const u8 {
    const obj_path = "/tmp/att_xdp_funny_bpf_filter.o";
    const cmd = std.fmt.allocPrint(
        allocator,
        "clang -O2 -g -target bpf -c bpf_filter.c -o {s}",
        .{obj_path},
    ) catch return null;
    const result = runShell(allocator, cmd) orelse return null;
    if (!result.ok) return null;
    return obj_path;
}

fn attachXdpProbe(allocator: std.mem.Allocator, iface: []const u8, obj_path: []const u8, mode: []const u8) ?CommandResult {
    const cmd = std.fmt.allocPrint(
        allocator,
        "ip link set dev {s} {s} off >/dev/null 2>&1; ip link set dev {s} {s} obj {s} sec xdp; rc=$?; ip link set dev {s} {s} off >/dev/null 2>&1; exit $rc",
        .{ iface, mode, iface, mode, obj_path, iface, mode },
    ) catch return null;
    return runShell(allocator, cmd);
}

fn scanXdp(allocator: std.mem.Allocator, summary: *Summary, writer: anytype, env: EnvironmentScan, nic: NicScan) !XdpScan {
    var result = XdpScan{};
    try writer.print("[3] Quét XDP\n", .{});

    const iface = nic.target_iface orelse {
        try printStatus(summary, writer, .skip, "XDP", "không có giao diện khả dụng để thử XDP");
        try writer.print("\n", .{});
        return result;
    };

    const xdp_loader = resolveCommand(allocator, &[_][]const u8{"xdp-loader"});
    if (xdp_loader) |tool| {
        const cmd = std.fmt.allocPrint(allocator, "{s} features {s}", .{ tool, iface }) catch "";
        if (cmd.len > 0) {
            const tool_result = runShell(allocator, cmd);
            if (tool_result) |output| {
                result.feature_query_ok = output.ok;
                try printStatus(summary, writer, if (output.ok) .pass else .warn, "Tính năng XDP", if (output.ok) "đã truy vấn bằng xdp-loader" else "có xdp-loader nhưng truy vấn tính năng thất bại");
                if (output.stdout.len > 0) try printCommandExcerpt(writer, output.stdout, 8);
                if (!output.ok and output.stderr.len > 0) try printCommandExcerpt(writer, output.stderr, 4);
            }
        }
    } else {
        const fallback = std.fmt.allocPrint(allocator, "ethtool -k {s} | grep -i xdp", .{iface}) catch "";
        const fallback_result = if (fallback.len > 0) runShell(allocator, fallback) else null;
        if (fallback_result) |output| {
            result.feature_query_ok = output.ok;
            try printStatus(summary, writer, if (output.ok) .pass else .warn, "Tính năng XDP", if (output.ok) "đã truy vấn bằng đường fallback ethtool" else "không có xdp-loader và ethtool không lộ ra các dòng XDP");
            if (output.stdout.len > 0) try printCommandExcerpt(writer, output.stdout, 6);
        } else {
            try printStatus(summary, writer, .skip, "Tính năng XDP", "không có xdp-loader và fallback ethtool cũng không khả dụng");
        }
    }

    const status_cmd = std.fmt.allocPrint(allocator, "ip -details link show dev {s}", .{iface}) catch "";
    const status_result = if (status_cmd.len > 0) runShell(allocator, status_cmd) else null;
    if (status_result) |output| {
        const has_xdp_state = std.mem.indexOf(u8, output.stdout, "xdp") != null or std.mem.indexOf(u8, output.stdout, "prog/") != null;
        try printStatus(summary, writer, if (has_xdp_state) .pass else .warn, "Trạng thái XDP", if (has_xdp_state) "chi tiết giao diện có chứa trạng thái liên quan đến XDP" else "không thấy trạng thái XDP tường minh trong đầu ra của ip -details");
    } else {
        try printStatus(summary, writer, .skip, "Trạng thái XDP", "không có lệnh ip để truy vấn trạng thái");
    }

    if (!env.is_root) {
        try printStatus(summary, writer, .skip, "Thử attach XDP", "cần quyền root để attach/detach chương trình thử nghiệm");
        try writer.print("\n", .{});
        return result;
    }

    if (!env.has_clang) {
        try printStatus(summary, writer, .skip, "Thử attach XDP", "không có clang; không thể build object BPF tạm");
        try writer.print("\n", .{});
        return result;
    }

    const obj_path = compileBpfObject(allocator) orelse {
        try printStatus(summary, writer, .fail, "Object thử XDP", "không biên dịch được bpf_filter.c thành object BPF tạm");
        try writer.print("\n", .{});
        return result;
    };

    const skb_result = attachXdpProbe(allocator, iface, obj_path, "xdpgeneric") orelse {
        try printStatus(summary, writer, .fail, "Attach XDP skb", "không thực thi được phép thử attach bằng lệnh ip");
        try writer.print("\n", .{});
        return result;
    };
    result.skb_attach_ok = skb_result.ok;
    try printStatus(summary, writer, if (skb_result.ok) .pass else .warn, "Attach XDP skb", if (skb_result.ok) "attach/detach XDP generic thành công" else "attach XDP generic thất bại");
    if (!skb_result.ok and skb_result.stderr.len > 0) try printCommandExcerpt(writer, skb_result.stderr, 4);

    const native_result = attachXdpProbe(allocator, iface, obj_path, "xdpdrv") orelse {
        try printStatus(summary, writer, .fail, "Attach XDP native", "không thực thi được phép thử attach native bằng lệnh ip");
        try writer.print("\n", .{});
        return result;
    };
    result.native_attach_ok = native_result.ok;
    try printStatus(summary, writer, if (native_result.ok) .pass else .warn, "Attach XDP native", if (native_result.ok) "attach/detach XDP native thành công" else "attach XDP native thất bại");
    if (!native_result.ok and native_result.stderr.len > 0) try printCommandExcerpt(writer, native_result.stderr, 4);

    try writer.print("\n", .{});
    return result;
}

fn probeAfXdpMode(if_name_z: [*:0]const u8, bind_flags: u16, xdp_flags: u32) AfXdpProbeResult {
    const frame_size: usize = 2048;
    const frame_count: u32 = 64;
    const mmap_size = frame_size * frame_count;
    const allocator = std.heap.page_allocator;

    const memory = allocator.alignedAlloc(u8, 4096, mmap_size) catch {
        return .{ .umem_ok = false, .umem_rc = -12, .socket_rc = null };
    };
    defer allocator.free(memory);
    @memset(memory, 0);

    var umem: ?*c.xsk_umem = null;
    var fill_ring: c.xsk_ring_prod = undefined;
    var comp_ring: c.xsk_ring_cons = undefined;

    var umem_config: c.xsk_umem_config = undefined;
    @memset(std.mem.asBytes(&umem_config), 0);
    umem_config.fill_size = frame_count;
    umem_config.comp_size = frame_count;
    umem_config.frame_size = frame_size;

    const umem_rc = c.xsk_umem__create(&umem, memory.ptr, mmap_size, &fill_ring, &comp_ring, &umem_config);
    if (umem_rc != 0) {
        return .{ .umem_ok = false, .umem_rc = umem_rc, .socket_rc = null };
    }
    defer if (umem) |ptr| {
        _ = c.xsk_umem__delete(ptr);
    };

    var xsk: ?*c.xsk_socket = null;
    var rx_ring: c.xsk_ring_cons = undefined;
    var socket_config: c.xsk_socket_config = undefined;
    @memset(std.mem.asBytes(&socket_config), 0);
    socket_config.rx_size = frame_count;
    socket_config.tx_size = frame_count;
    socket_config.xdp_flags = xdp_flags;
    socket_config.bind_flags = bind_flags;

    const socket_rc = c.xsk_socket__create(&xsk, if_name_z, 0, umem, &rx_ring, null, &socket_config);
    if (socket_rc == 0) {
        defer if (xsk) |ptr| c.xsk_socket__delete(ptr);
    }

    return .{ .umem_ok = true, .umem_rc = umem_rc, .socket_rc = socket_rc };
}

fn scanAfXdp(allocator: std.mem.Allocator, summary: *Summary, writer: anytype, env: EnvironmentScan, nic: NicScan) !AfXdpScan {
    var result = AfXdpScan{};
    try writer.print("[4] Quét AF_XDP\n", .{});

    const iface = nic.target_iface orelse {
        try printStatus(summary, writer, .skip, "AF_XDP", "không có giao diện khả dụng để thử AF_XDP");
        try writer.print("\n", .{});
        return result;
    };

    if (!env.is_root) {
        try printStatus(summary, writer, .skip, "AF_XDP", "cần quyền root hoặc capability phù hợp để tạo/bind XSK socket");
        try writer.print("\n", .{});
        return result;
    }

    const iface_z = std.fmt.allocPrintZ(allocator, "{s}", .{iface}) catch {
        try printStatus(summary, writer, .fail, "AF_XDP", "không cấp phát được bộ đệm tên giao diện");
        try writer.print("\n", .{});
        return result;
    };

    const copy_probe = probeAfXdpMode(iface_z, c.XDP_COPY, c.XDP_FLAGS_SKB_MODE);
    result.umem_ok = copy_probe.umem_ok;
    result.copy_ok = copy_probe.socket_rc != null and copy_probe.socket_rc.? == 0;

    if (!copy_probe.umem_ok) {
        const detail = std.fmt.allocPrint(allocator, "tạo UMEM thất bại: {s} ({d})", .{ errorNameForRc(copy_probe.umem_rc), copy_probe.umem_rc }) catch "tạo UMEM thất bại";
        try printStatus(summary, writer, .fail, "UMEM AF_XDP", detail);
        try writer.print("\n", .{});
        return result;
    }

    try printStatus(summary, writer, .pass, "UMEM AF_XDP", "xsk_umem__create thành công");

    const copy_detail = std.fmt.allocPrint(
        allocator,
        "phép thử socket chế độ copy trả về {s}",
        .{errorNameForRc(copy_probe.socket_rc orelse copy_probe.umem_rc)},
    ) catch "đã chạy phép thử copy";
    try printStatus(summary, writer, if (result.copy_ok) .pass else .warn, "AF_XDP copy", copy_detail);

    const zero_probe = probeAfXdpMode(iface_z, c.XDP_ZEROCOPY, c.XDP_FLAGS_DRV_MODE);
    result.zero_copy_ok = zero_probe.socket_rc != null and zero_probe.socket_rc.? == 0;
    const zero_detail = std.fmt.allocPrint(
        allocator,
        "phép thử socket zero-copy trả về {s}",
        .{errorNameForRc(zero_probe.socket_rc orelse zero_probe.umem_rc)},
    ) catch "đã chạy phép thử zero-copy";
    try printStatus(summary, writer, if (result.zero_copy_ok) .pass else .warn, "AF_XDP zero-copy", zero_detail);

    try writer.print("\n", .{});
    return result;
}

fn scanDpdk(allocator: std.mem.Allocator, summary: *Summary, writer: anytype) !DpdkScan {
    var result = DpdkScan{};
    try writer.print("[5] Quét DPDK\n", .{});

    const meminfo = readSmallFile(allocator, "/proc/meminfo", 4096) orelse "";
    result.hugepages_total = parseHugePagesTotal(meminfo);
    result.hugepages_mounted = if (readSmallFile(allocator, "/proc/mounts", 8192)) |mounts| std.mem.indexOf(u8, mounts, "hugetlbfs") != null else false;
    result.vfio_loaded = dirExists("/sys/module/vfio") or dirExists("/sys/module/vfio_pci");
    result.iommu_present = directoryHasEntries("/sys/class/iommu");
    result.devbind_available = resolveCommand(allocator, &[_][]const u8{
        "dpdk-devbind.py",
        "dpdk-devbind",
        "/usr/share/dpdk/usertools/dpdk-devbind.py",
        "/usr/local/share/dpdk/usertools/dpdk-devbind.py",
    }) != null;

    const hugepages_detail = std.fmt.allocPrint(allocator, "HugePages_Total={d}", .{result.hugepages_total}) catch "không rõ HugePages_Total";
    try printStatus(summary, writer, if (result.hugepages_total > 0) .pass else .warn, "Hugepages", hugepages_detail);
    try printStatus(summary, writer, if (result.hugepages_mounted) .pass else .warn, "Mount HugeTLB", if (result.hugepages_mounted) "đã mount hugetlbfs" else "chưa mount hugetlbfs");
    try printStatus(summary, writer, if (result.vfio_loaded) .pass else .warn, "VFIO", if (result.vfio_loaded) "đã nạp module vfio/vfio_pci" else "chưa nạp module vfio");
    try printStatus(summary, writer, if (result.iommu_present) .pass else .warn, "IOMMU", if (result.iommu_present) "có entry trong /sys/class/iommu" else "không phát hiện entry IOMMU");
    try printStatus(summary, writer, if (result.devbind_available) .pass else .warn, "dpdk-devbind", if (result.devbind_available) "có công cụ devbind" else "không tìm thấy công cụ devbind");

    if (resolveCommand(allocator, &[_][]const u8{
        "dpdk-devbind.py",
        "dpdk-devbind",
        "/usr/share/dpdk/usertools/dpdk-devbind.py",
        "/usr/local/share/dpdk/usertools/dpdk-devbind.py",
    })) |devbind| {
        const cmd = std.fmt.allocPrint(allocator, "{s} --status", .{devbind}) catch "";
        if (cmd.len > 0) {
            if (runShell(allocator, cmd)) |output| {
                if (output.stdout.len > 0) try printCommandExcerpt(writer, output.stdout, 8);
            }
        }
    }

    try writer.print("\n", .{});
    return result;
}

fn probeAfPacket(iface_z: [*:0]const u8) bool {
    const if_index = c.if_nametoindex(iface_z);
    if (if_index == 0) return false;

    const protocol = std.mem.nativeToBig(u16, @as(u16, @intCast(c.ETH_P_ALL)));
    const fd = c.socket(c.AF_PACKET, c.SOCK_RAW, @intCast(protocol));
    if (fd < 0) return false;
    defer _ = c.close(fd);

    var bind_addr: c.struct_sockaddr_ll = undefined;
    @memset(std.mem.asBytes(&bind_addr), 0);
    bind_addr.sll_family = c.AF_PACKET;
    bind_addr.sll_protocol = protocol;
    bind_addr.sll_ifindex = @intCast(if_index);

    return c.bind(fd, @ptrCast(&bind_addr), @sizeOf(c.struct_sockaddr_ll)) == 0;
}

fn scanFallback(allocator: std.mem.Allocator, summary: *Summary, writer: anytype, env: EnvironmentScan, nic: NicScan) !FallbackScan {
    var result = FallbackScan{};
    try writer.print("[6] Quét đường dự phòng\n", .{});

    const iface = nic.target_iface orelse {
        try printStatus(summary, writer, .skip, "AF_PACKET", "không có giao diện khả dụng cho phép thử dự phòng");
        try writer.print("\n", .{});
        return result;
    };

    if (!env.is_root) {
        try printStatus(summary, writer, .skip, "AF_PACKET", "phép thử raw AF_PACKET socket cần quyền root");
        try writer.print("\n", .{});
        return result;
    }

    const iface_z = std.fmt.allocPrintZ(allocator, "{s}", .{iface}) catch {
        try printStatus(summary, writer, .fail, "AF_PACKET", "không cấp phát được bộ đệm tên giao diện");
        try writer.print("\n", .{});
        return result;
    };

    result.af_packet_ok = probeAfPacket(iface_z);
    try printStatus(summary, writer, if (result.af_packet_ok) .pass else .warn, "AF_PACKET", if (result.af_packet_ok) "tạo/bind raw packet socket thành công" else "tạo/bind raw packet socket thất bại");
    try writer.print("\n", .{});
    return result;
}

fn printVerdict(writer: anytype, summary: Summary, env: EnvironmentScan, nic: NicScan, xdp: XdpScan, af_xdp: AfXdpScan, dpdk: DpdkScan, fallback: FallbackScan) !void {
    try writer.print("=== KẾT LUẬN CUỐI CÙNG ===\n", .{});

    if (env.is_wsl2) {
        try writer.print("Phân loại môi trường: bị giới hạn bởi WSL2. Nên ưu tiên AF_PACKET trước; generic XDP có thể dùng, còn native XDP/AF_XDP/DPDK thường bị hạn chế.\n", .{});
    } else if (xdp.native_attach_ok and (af_xdp.copy_ok or af_xdp.zero_copy_ok)) {
        try writer.print("Phân loại môi trường: ứng viên mạnh cho kernel-bypass. Native XDP và ít nhất một chế độ AF_XDP đã thử thành công.\n", .{});
    } else if (xdp.skb_attach_ok or fallback.af_packet_ok) {
        try writer.print("Phân loại môi trường: ứng viên bypass một phần. Generic XDP và/hoặc AF_PACKET dùng được, nhưng chưa chứng minh được bypass native hoàn chỉnh.\n", .{});
    } else {
        try writer.print("Phân loại môi trường: chưa sẵn sàng cho bypass. Các phép thử cơ bản chưa thiết lập được datapath XDP/AF_XDP/dự phòng khả dụng.\n", .{});
    }

    if (nic.target_is_hv_netvsc) {
        try writer.print("Cảnh báo NIC mục tiêu: phát hiện hv_netvsc trên giao diện thử nghiệm; đây là điểm chặn rất thường gặp với AF_XDP/XDP native nghiêm túc.\n", .{});
    }
    if (!dpdk.vfio_loaded or !dpdk.iommu_present) {
        try writer.print("Cảnh báo DPDK: mức sẵn sàng của VFIO/IOMMU chưa hoàn chỉnh.\n", .{});
    }

    try writer.print(
        "Tóm tắt: ĐẠT={d} CẢNH BÁO={d} LỖI={d} BỎ QUA={d}\n",
        .{ summary.pass, summary.warn, summary.fail, summary.skip },
    );
}

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();

    const stdout = std.io.getStdOut().writer();
    var summary = Summary{};

    try stdout.print("--- BỘ QUÉT VŨ KHÍ HFT CHO SNIPER ---\n\n", .{});

    const env = try scanEnvironment(allocator, &summary, stdout);
    const nic = try scanNic(allocator, &summary, stdout);
    const xdp = try scanXdp(allocator, &summary, stdout, env, nic);
    const af_xdp = try scanAfXdp(allocator, &summary, stdout, env, nic);
    const dpdk = try scanDpdk(allocator, &summary, stdout);
    const fallback = try scanFallback(allocator, &summary, stdout, env, nic);

    try printVerdict(stdout, summary, env, nic, xdp, af_xdp, dpdk, fallback);
}
