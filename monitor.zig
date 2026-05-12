const std = @import("std");
const os = std.os;
const linux = std.os.linux;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    // Sếp cần chạy lệnh này ở ngoài trước để 'pin' map vào file hệ thống:
    // sudo bpftool map pin name pkt_count_map /sys/fs/bpf/sniper_map
    // Nếu không có bpftool, chúng ta sẽ mò ID bằng tay.
    
    try stdout.print("--- ZIG BPF MONITOR ACTIVE ---\n", .{});
    
    // Giả sử sếp lấy được ID từ lệnh 'ip link' hoặc 'bpftool prog show'
    // Ở đây tôi sẽ hướng dẫn sếp cách dùng lệnh shell để lấy ID nhanh:
    // sudo bpftool map list
    
    const map_id: u32 = 520; // THAY ID CỦA MAP VÀO ĐÂY (Sếp xem ở ip link hoặc bpftool)

    // Cấu trúc tham số cho syscall BPF
    const attr = struct {
        map_id: u32,
        next_id: u32 = 0,
        open_flags: u32 = 0,
    }{ .map_id = map_id };

    const fd = linux.syscall2(.bpf, 7, @intFromPtr(&attr)); // 7 = BPF_MAP_GET_FD_BY_ID
    
    if (fd < 0) {
        try stdout.print("Lỗi: Không lấy được FD cho Map ID {d}. Sếp check sudo chưa?\n", .{map_id});
        return;
    }

    try stdout.print("Đang đọc dữ liệu từ Kernel (Map ID: {d})...\n", .{map_id});

    while (true) {
        var key: u32 = 0;
        var value: u64 = 0;
        
        const lookup_attr = struct {
            map_fd: i32,
            key: *u32,
            value: *u64,
            flags: u64 = 0,
        }{
            .map_fd = @intCast(fd),
            .key = &key,
            .value = &value,
        };

        _ = linux.syscall2(.bpf, 1, @intFromPtr(&lookup_attr)); // 1 = BPF_MAP_LOOKUP_ELEM

        try stdout.print("\rSố gói tin Sniper bắt được: {d} ", .{value});
        
        std.time.sleep(500 * std.time.ns_per_ms); // Nghỉ 0.5s rồi đọc tiếp
    }
}