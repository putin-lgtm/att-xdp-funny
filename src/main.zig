const std = @import("std");
const c = @import("c");

pub fn main() void {
    std.debug.print("--- XDP Sniper: Khoi tao UMEM ---\n", .{});

    // 1. Cau hinh thong so
    const FRAME_SIZE: u32 = 2048;
    const FRAME_COUNT: u32 = 4096;
    const UMEM_SIZE = FRAME_COUNT * FRAME_SIZE;

    // 2. Cap phat vung nho Aligned 4096 (Page size)
    const allocator = std.heap.page_allocator;
    const memory = allocator.alignedAlloc(u8, std.mem.Alignment.fromByteUnits(4096), UMEM_SIZE) catch |err| {
        std.debug.print("Loi cap phat bo nho: {}\n", .{err});
        return;
    };
    defer allocator.free(memory);
    @memset(memory, 0);

    // 3. Khai bao cac thanh phan UMEM
    var umem: ?*c.xsk_umem = null;
    var fill_ring: c.xsk_ring_prod = undefined;
    var comp_ring: c.xsk_ring_cons = undefined;

    var config: c.xsk_umem_config = .{
        .fill_size = 2048,
        .comp_size = 2048,
        .frame_size = FRAME_SIZE,
        .frame_headroom = 0,
        .flags = 0,
    };

    // 4. Goi ham C tu libxdp
    const ret = c.xsk_umem__create(
        &umem,
        memory.ptr,
        UMEM_SIZE,
        &fill_ring,
        &comp_ring,
        &config,
    );

    if (ret != 0) {
        std.debug.print("Loi tao UMEM: {d}\n", .{ret});
        return;
    }

    std.debug.print("Cuc doan hoa thanh cong: San bay UMEM tai {*}!\n", .{memory.ptr});
}