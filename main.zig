const std = @import("std");
const monitor = @import("rdtsc-histogram.zig");
const c = @cImport({
    @cInclude("xdp/xsk.h");
    @cInclude("linux/if_xdp.h");
    @cInclude("linux/if_link.h");
    @cInclude("net/if.h");
    @cInclude("string.h");
    @cInclude("errno.h");
});

inline fn rdtsc() u64 {
    var lo: u32 = undefined;
    var hi: u32 = undefined;
    asm volatile ("rdtsc"
        : [lo] "={ax}" (lo),
          [hi] "={dx}" (hi),
    );
    return (@as(u64, hi) << 32) | lo;
}

fn usesHvNetvsc(if_name: []const u8) bool {
    var path_buf: [128]u8 = undefined;
    const path = std.fmt.bufPrint(&path_buf, "/sys/class/net/{s}/device/driver", .{if_name}) catch {
        return false;
    };

    var link_buf: [256]u8 = undefined;
    const target = std.fs.cwd().readLink(path, &link_buf) catch {
        return false;
    };

    return std.mem.indexOf(u8, target, "hv_netvsc") != null;
}

pub fn main() !void {
    var lm = monitor.LatencyMonitor{};
    const if_name = "eth0";

    if (usesHvNetvsc(if_name)) {
        std.debug.print(
            "Loi: {s} dang chay tren hv_netvsc (WSL2/Hyper-V). AF_XDP khong duoc ho tro tren backend nay, nen xsk_socket__create se tra ve EINVAL.\n",
            .{if_name},
        );
        std.debug.print("Hay chay tren Linux native/VM co NIC ho tro XDP, hoac doi sang mot co che bat goi khac.\n", .{});
        return error.UnsupportedInterface;
    }

    // Hạ quy mô xuống để Kernel dễ chấp nhận hơn
    const FRAME_SIZE = 2048;
    const FRAME_COUNT = 1024; // Giảm từ 4096 xuống 1024
    const mmap_size = FRAME_COUNT * FRAME_SIZE;

    const allocator = std.heap.page_allocator;
    const memory = try allocator.alignedAlloc(u8, 4096, mmap_size);
    @memset(memory, 0);

    var umem: ?*c.xsk_umem = null;
    var f_ring: c.xsk_ring_prod = undefined;
    var c_ring: c.xsk_ring_cons = undefined;

    var u_config: c.xsk_umem_config = undefined;
    @memset(std.mem.asBytes(&u_config), 0);
    u_config.fill_size = 512; // Giảm xuống 512
    u_config.comp_size = 512; // Giảm xuống 512
    u_config.frame_size = FRAME_SIZE;

    if (c.xsk_umem__create(&umem, memory.ptr, mmap_size, &f_ring, &c_ring, &u_config) != 0) {
        std.debug.print("Loi: Khong the tao UMEM\n", .{});
        return error.UmemCreateFailed;
    }

    var xsk: ?*c.xsk_socket = null;
    var rx_ring: c.xsk_ring_cons = undefined;

    var x_config: c.xsk_socket_config = undefined;
    @memset(std.mem.asBytes(&x_config), 0);
    x_config.rx_size = 512; // Giảm xuống 512
    x_config.tx_size = 512; // Giảm xuống 512
    x_config.xdp_flags = c.XDP_FLAGS_SKB_MODE; // Môi trường ảo thường chỉ chấp nhận generic/SKB mode
    x_config.bind_flags = 1; // Giữ XDP_COPY cho môi trường ảo

    const ret = c.xsk_socket__create(&xsk, if_name, 0, umem, &rx_ring, null, &x_config);
    if (ret != 0) {
        const err_msg = c.strerror(@intCast(-ret));
        std.debug.print("Loi tao Socket ({d}): {s}\n", .{ ret, err_msg });
        return error.SocketCreateFailed;
    }

    std.debug.print("--- SNIPER ACTIVE ON {s} ---\n", .{if_name});

    var pkt_count: usize = 0;
    while (pkt_count < 10) { // Thử nghiệm 10 gói tin trước cho nhanh
        var idx: u32 = 0;
        if (c.xsk_ring_cons__peek(&rx_ring, 1, &idx) > 0) {
            const start = rdtsc();
            _ = c.xsk_ring_cons__rx_desc(&rx_ring, idx);
            const end = rdtsc();
            lm.record(end - start);
            c.xsk_ring_cons__release(&rx_ring, 1);
            pkt_count += 1;
        }
    }
    lm.report();
}
