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
        .pass => "OK",
        .warn => "WARN",
        .fail => "FAIL",
        .skip => "SKIP",
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
    if (rc >= 0) return "ok";
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

    try writer.print("[1] Environment scan\n", .{});
    try printStatus(summary, writer, .pass, "OS/kernel", result.kernel);
    try printStatus(summary, writer, if (result.is_root) .pass else .warn, "Privileges", if (result.is_root) "running as root; attach/socket probes enabled" else "not root; attach/socket probes may be skipped or fail");
    try printStatus(summary, writer, if (result.is_wsl2) .warn else .pass, "Runtime", if (result.is_wsl2) "WSL2 detected; native XDP/AF_XDP/DPDK expectations are limited" else "native Linux runtime detected");
    try printStatus(summary, writer, if (result.has_btf) .pass else .warn, "BTF", if (result.has_btf) "/sys/kernel/btf/vmlinux present" else "kernel BTF not found");
    try printStatus(summary, writer, if (result.has_bpftool) .pass else .warn, "bpftool", if (result.has_bpftool) "available" else "not available in PATH");
    try printStatus(summary, writer, if (result.has_clang) .pass else .fail, "clang", if (result.has_clang) "available" else "not available in PATH");
    try printStatus(summary, writer, if (result.has_libbpf) .pass else .warn, "libbpf", if (result.has_libbpf) "headers/library detected" else "libbpf headers/library not found in standard locations");
    try writer.print("\n", .{});
    return result;
}

fn scanNic(allocator: std.mem.Allocator, summary: *Summary, writer: anytype) !NicScan {
    var result = NicScan{};
    try writer.print("[2] NIC scan\n", .{});

    var net_dir = fs.openDirAbsolute("/sys/class/net", .{ .iterate = true }) catch {
        try printStatus(summary, writer, .fail, "Interfaces", "cannot open /sys/class/net");
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
            "driver={s}, rxq={d}, txq={d}, numa={s}, device={s}",
            .{
                driver orelse "unknown",
                rx_queues,
                tx_queues,
                numa_text orelse "unknown",
                pci_path orelse "n/a",
            },
        ) catch "detail allocation failed";
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
        const detail = std.fmt.allocPrint(allocator, "target interface for active probes: {s} (driver={s})", .{ iface, result.target_driver orelse "unknown" }) catch "target selection failed";
        try printStatus(summary, writer, if (std.mem.eql(u8, iface, "lo")) .warn else .pass, "Probe target", detail);
    } else {
        try printStatus(summary, writer, .fail, "Probe target", "no interface detected under /sys/class/net");
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
    try writer.print("[3] XDP scan\n", .{});

    const iface = nic.target_iface orelse {
        try printStatus(summary, writer, .skip, "XDP", "no interface available for XDP probes");
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
                try printStatus(summary, writer, if (output.ok) .pass else .warn, "XDP features", if (output.ok) "queried with xdp-loader" else "xdp-loader present but feature query failed");
                if (output.stdout.len > 0) try printCommandExcerpt(writer, output.stdout, 8);
                if (!output.ok and output.stderr.len > 0) try printCommandExcerpt(writer, output.stderr, 4);
            }
        }
    } else {
        const fallback = std.fmt.allocPrint(allocator, "ethtool -k {s} | grep -i xdp", .{iface}) catch "";
        const fallback_result = if (fallback.len > 0) runShell(allocator, fallback) else null;
        if (fallback_result) |output| {
            result.feature_query_ok = output.ok;
            try printStatus(summary, writer, if (output.ok) .pass else .warn, "XDP features", if (output.ok) "queried with ethtool feature fallback" else "xdp-loader missing and ethtool did not expose XDP lines");
            if (output.stdout.len > 0) try printCommandExcerpt(writer, output.stdout, 6);
        } else {
            try printStatus(summary, writer, .skip, "XDP features", "xdp-loader not found and ethtool fallback unavailable");
        }
    }

    const status_cmd = std.fmt.allocPrint(allocator, "ip -details link show dev {s}", .{iface}) catch "";
    const status_result = if (status_cmd.len > 0) runShell(allocator, status_cmd) else null;
    if (status_result) |output| {
        const has_xdp_state = std.mem.indexOf(u8, output.stdout, "xdp") != null or std.mem.indexOf(u8, output.stdout, "prog/") != null;
        try printStatus(summary, writer, if (has_xdp_state) .pass else .warn, "XDP status", if (has_xdp_state) "interface details include XDP-related state" else "no explicit XDP state visible in ip -details output");
    } else {
        try printStatus(summary, writer, .skip, "XDP status", "ip command not available for status query");
    }

    if (!env.is_root) {
        try printStatus(summary, writer, .skip, "XDP attach test", "requires root to attach/detach probe programs");
        try writer.print("\n", .{});
        return result;
    }

    if (!env.has_clang) {
        try printStatus(summary, writer, .skip, "XDP attach test", "clang unavailable; cannot build temporary probe object");
        try writer.print("\n", .{});
        return result;
    }

    const obj_path = compileBpfObject(allocator) orelse {
        try printStatus(summary, writer, .fail, "XDP probe object", "failed to compile bpf_filter.c into a temporary BPF object");
        try writer.print("\n", .{});
        return result;
    };

    const skb_result = attachXdpProbe(allocator, iface, obj_path, "xdpgeneric") orelse {
        try printStatus(summary, writer, .fail, "XDP skb attach", "failed to execute ip-based attach probe");
        try writer.print("\n", .{});
        return result;
    };
    result.skb_attach_ok = skb_result.ok;
    try printStatus(summary, writer, if (skb_result.ok) .pass else .warn, "XDP skb attach", if (skb_result.ok) "generic XDP attach/detach succeeded" else "generic XDP attach failed");
    if (!skb_result.ok and skb_result.stderr.len > 0) try printCommandExcerpt(writer, skb_result.stderr, 4);

    const native_result = attachXdpProbe(allocator, iface, obj_path, "xdpdrv") orelse {
        try printStatus(summary, writer, .fail, "XDP native attach", "failed to execute ip-based native attach probe");
        try writer.print("\n", .{});
        return result;
    };
    result.native_attach_ok = native_result.ok;
    try printStatus(summary, writer, if (native_result.ok) .pass else .warn, "XDP native attach", if (native_result.ok) "native XDP attach/detach succeeded" else "native XDP attach failed");
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
    try writer.print("[4] AF_XDP scan\n", .{});

    const iface = nic.target_iface orelse {
        try printStatus(summary, writer, .skip, "AF_XDP", "no interface available for AF_XDP probes");
        try writer.print("\n", .{});
        return result;
    };

    if (!env.is_root) {
        try printStatus(summary, writer, .skip, "AF_XDP", "requires root or appropriate capabilities to create/bind XSK sockets");
        try writer.print("\n", .{});
        return result;
    }

    const iface_z = std.fmt.allocPrintZ(allocator, "{s}", .{iface}) catch {
        try printStatus(summary, writer, .fail, "AF_XDP", "failed to allocate interface name buffer");
        try writer.print("\n", .{});
        return result;
    };

    const copy_probe = probeAfXdpMode(iface_z, c.XDP_COPY, c.XDP_FLAGS_SKB_MODE);
    result.umem_ok = copy_probe.umem_ok;
    result.copy_ok = copy_probe.socket_rc != null and copy_probe.socket_rc.? == 0;

    if (!copy_probe.umem_ok) {
        const detail = std.fmt.allocPrint(allocator, "UMEM create failed: {s} ({d})", .{ errorNameForRc(copy_probe.umem_rc), copy_probe.umem_rc }) catch "UMEM create failed";
        try printStatus(summary, writer, .fail, "AF_XDP UMEM", detail);
        try writer.print("\n", .{});
        return result;
    }

    try printStatus(summary, writer, .pass, "AF_XDP UMEM", "xsk_umem__create succeeded");

    const copy_detail = std.fmt.allocPrint(
        allocator,
        "copy mode socket probe returned {s}",
        .{errorNameForRc(copy_probe.socket_rc orelse copy_probe.umem_rc)},
    ) catch "copy probe completed";
    try printStatus(summary, writer, if (result.copy_ok) .pass else .warn, "AF_XDP copy", copy_detail);

    const zero_probe = probeAfXdpMode(iface_z, c.XDP_ZEROCOPY, c.XDP_FLAGS_DRV_MODE);
    result.zero_copy_ok = zero_probe.socket_rc != null and zero_probe.socket_rc.? == 0;
    const zero_detail = std.fmt.allocPrint(
        allocator,
        "zero-copy socket probe returned {s}",
        .{errorNameForRc(zero_probe.socket_rc orelse zero_probe.umem_rc)},
    ) catch "zero-copy probe completed";
    try printStatus(summary, writer, if (result.zero_copy_ok) .pass else .warn, "AF_XDP zero-copy", zero_detail);

    try writer.print("\n", .{});
    return result;
}

fn scanDpdk(allocator: std.mem.Allocator, summary: *Summary, writer: anytype) !DpdkScan {
    var result = DpdkScan{};
    try writer.print("[5] DPDK scan\n", .{});

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

    const hugepages_detail = std.fmt.allocPrint(allocator, "HugePages_Total={d}", .{result.hugepages_total}) catch "HugePages_Total unknown";
    try printStatus(summary, writer, if (result.hugepages_total > 0) .pass else .warn, "Hugepages", hugepages_detail);
    try printStatus(summary, writer, if (result.hugepages_mounted) .pass else .warn, "HugeTLB mount", if (result.hugepages_mounted) "hugetlbfs mounted" else "hugetlbfs not mounted");
    try printStatus(summary, writer, if (result.vfio_loaded) .pass else .warn, "VFIO", if (result.vfio_loaded) "vfio/vfio_pci module loaded" else "vfio modules not loaded");
    try printStatus(summary, writer, if (result.iommu_present) .pass else .warn, "IOMMU", if (result.iommu_present) "/sys/class/iommu has entries" else "no IOMMU entries detected");
    try printStatus(summary, writer, if (result.devbind_available) .pass else .warn, "dpdk-devbind", if (result.devbind_available) "devbind utility available" else "devbind utility not found");

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
    try writer.print("[6] Fallback scan\n", .{});

    const iface = nic.target_iface orelse {
        try printStatus(summary, writer, .skip, "AF_PACKET", "no interface available for fallback probe");
        try writer.print("\n", .{});
        return result;
    };

    if (!env.is_root) {
        try printStatus(summary, writer, .skip, "AF_PACKET", "raw AF_PACKET socket probe requires root");
        try writer.print("\n", .{});
        return result;
    }

    const iface_z = std.fmt.allocPrintZ(allocator, "{s}", .{iface}) catch {
        try printStatus(summary, writer, .fail, "AF_PACKET", "failed to allocate interface name buffer");
        try writer.print("\n", .{});
        return result;
    };

    result.af_packet_ok = probeAfPacket(iface_z);
    try printStatus(summary, writer, if (result.af_packet_ok) .pass else .warn, "AF_PACKET", if (result.af_packet_ok) "raw packet socket create/bind succeeded" else "raw packet socket create/bind failed");
    try writer.print("\n", .{});
    return result;
}

fn printVerdict(writer: anytype, summary: Summary, env: EnvironmentScan, nic: NicScan, xdp: XdpScan, af_xdp: AfXdpScan, dpdk: DpdkScan, fallback: FallbackScan) !void {
    try writer.print("=== FINAL VERDICT ===\n", .{});

    if (env.is_wsl2) {
        try writer.print("Runtime class: WSL2-limited. Expect AF_PACKET first, generic XDP maybe, native XDP/AF_XDP/DPDK usually constrained.\n", .{});
    } else if (xdp.native_attach_ok and (af_xdp.copy_ok or af_xdp.zero_copy_ok)) {
        try writer.print("Runtime class: strong kernel-bypass candidate. Native XDP and at least one AF_XDP mode probed successfully.\n", .{});
    } else if (xdp.skb_attach_ok or fallback.af_packet_ok) {
        try writer.print("Runtime class: partial bypass candidate. Generic XDP and/or AF_PACKET path is usable, but full native bypass is not proven.\n", .{});
    } else {
        try writer.print("Runtime class: not bypass-ready. Baseline probes did not establish a usable XDP/AF_XDP/fallback datapath.\n", .{});
    }

    if (nic.target_is_hv_netvsc) {
        try writer.print("Target NIC warning: hv_netvsc detected on probe interface; this is a common blocker for serious AF_XDP/native XDP work.\n", .{});
    }
    if (!dpdk.vfio_loaded or !dpdk.iommu_present) {
        try writer.print("DPDK warning: VFIO/IOMMU readiness is incomplete.\n", .{});
    }

    try writer.print(
        "Summary: OK={d} WARN={d} FAIL={d} SKIP={d}\n",
        .{ summary.pass, summary.warn, summary.fail, summary.skip },
    );
}

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();

    const stdout = std.io.getStdOut().writer();
    var summary = Summary{};

    try stdout.print("--- HFT WEAPON SCANNER FOR SNIPER ---\n\n", .{});

    const env = try scanEnvironment(allocator, &summary, stdout);
    const nic = try scanNic(allocator, &summary, stdout);
    const xdp = try scanXdp(allocator, &summary, stdout, env, nic);
    const af_xdp = try scanAfXdp(allocator, &summary, stdout, env, nic);
    const dpdk = try scanDpdk(allocator, &summary, stdout);
    const fallback = try scanFallback(allocator, &summary, stdout, env, nic);

    try printVerdict(stdout, summary, env, nic, xdp, af_xdp, dpdk, fallback);
}
