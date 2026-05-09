const std = @import("std");

pub const LatencyMonitor = struct {
    samples: [1000]u64 = undefined,
    count: usize = 0,

    pub fn record(self: *LatencyMonitor, cycles: u64) void {
        if (self.count < self.samples.len) {
            self.samples[self.count] = cycles;
            self.count += 1;
        }
    }

    pub fn report(self: *LatencyMonitor) void {
        if (self.count == 0) return;
        const slice = self.samples[0..self.count];
        // Bản 0.13.0 dùng cú pháp sort ổn định này
        std.mem.sort(u64, slice, {}, std.sort.asc(u64));
        
        const p50 = slice[self.count / 2];
        const p99 = slice[(self.count * 99) / 100];
        
        std.debug.print("\n--- KET QUA SOI KINH HIEN VI ---\n", .{});
        std.debug.print("P50 (Median): {d} cycles\n", .{p50});
        std.debug.print("P99 (Tail):   {d} cycles\n", .{p99});
        std.debug.print("--------------------------------\n", .{});
    }
};