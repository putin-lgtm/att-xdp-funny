const std = @import("std");

const c = @cImport({
    @cInclude("sys/socket.h");
    @cInclude("linux/if_packet.h");
    @cInclude("net/ethernet.h");
    @cInclude("net/if.h");
    @cInclude("unistd.h");
    @cInclude("fcntl.h");
});

pub fn main() !void {
    const if_name = "eth0";
    const sock_fd = c.socket(c.AF_PACKET, c.SOCK_RAW, @intCast(1024)); // ETH_P_ALL
    if (sock_fd < 0) return error.SocketError;
    defer _ = c.close(sock_fd);

    const if_index = c.if_nametoindex(if_name);
    if (if_index == 0) return error.InterfaceNotFound;

    var bind_addr: c.struct_sockaddr_ll = undefined;
    @memset(std.mem.asBytes(&bind_addr), 0);
    bind_addr.sll_family = c.AF_PACKET;
    bind_addr.sll_protocol = @intCast(1024);
    bind_addr.sll_ifindex = @intCast(if_index);
    if (c.bind(sock_fd, @ptrCast(&bind_addr), @sizeOf(c.struct_sockaddr_ll)) != 0) {
        return error.BindError;
    }

    _ = c.fcntl(sock_fd, c.F_SETFL, c.O_NONBLOCK);

    var buffer: [1600]u8 align(64) = undefined;

    // Đồn trú ban đầu
    var current_price: u64 = 0;
    const threshold: u64 = 50; // Giả sử giá trên 50 là mồi ngon
    var trade_count: u64 = 0;

    std.debug.print("--- ASSEMBLY SNIPER ACTIVE (No Branching) ---\n", .{});

    while (true) {
        const bytes = c.recvfrom(sock_fd, &buffer, buffer.len, 0, null, null);

        if (bytes > 0) {
            const start = rdtsc();

            // Lấy 1 byte dữ liệu từ gói tin (giả lập giá)
            const incoming_raw = buffer[0];

            // ĐOẠN ASSEMBLY "ÁC": Xử lý không rẽ nhánh
            // %0: current_price (rax), %1: trade_count (rbx), %2: threshold (rcx), %3: incoming_raw (rdx)
            asm volatile (
                \\ cmpq %[threshold], %[raw]
                \\ jbe 1f
                \\ movq %[raw], %[price]
                \\ incq %[count]
                \\ 1:
                : [price] "+{rax}" (current_price),
                  [count] "+{rbx}" (trade_count),
                : [threshold] "{rcx}" (threshold),
                  [raw] "{rdx}" (@as(u64, incoming_raw)),
                : "cc"
            );

            const end = rdtsc();

            if (trade_count % 1000 == 0) {
                std.debug.print("Lat: {d} | P: {d} | Count: {d}\n", .{ end - start, current_price, trade_count });
            }
        }
    }
}

inline fn rdtsc() u64 {
    var lo: u32 = undefined;
    var hi: u32 = undefined;
    asm volatile ("rdtsc"
        : [lo] "={ax}" (lo),
          [hi] "={dx}" (hi),
    );
    return (@as(u64, hi) << 32) | lo;
}
