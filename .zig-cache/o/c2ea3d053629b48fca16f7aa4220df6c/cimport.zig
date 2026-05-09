pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_2 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.C) __ssize_t;
pub const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.C) __ssize_t;
pub const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.C) c_int;
pub const cookie_close_function_t = fn (?*anyopaque) callconv(.C) c_int;
pub const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
pub const cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const va_list = __gnuc_va_list;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub fn vprintf(arg___fmt: [*c]const u8, arg___arg: [*c]struct___va_list_tag_1) callconv(.C) c_int {
    var __fmt = arg___fmt;
    _ = &__fmt;
    var __arg = arg___arg;
    _ = &__arg;
    return vfprintf(stdout, __fmt, __arg);
}
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub fn getchar() callconv(.C) c_int {
    return getc(stdin);
}
pub fn getc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    _ = &__fp;
    return if (__builtin_expect(@as(c_long, @intFromBool(__fp.*._IO_read_ptr >= __fp.*._IO_read_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __uflow(__fp) else @as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).*)));
}
pub fn getchar_unlocked() callconv(.C) c_int {
    return if (__builtin_expect(@as(c_long, @intFromBool(stdin.*._IO_read_ptr >= stdin.*._IO_read_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __uflow(stdin) else @as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(blk: {
        const ref = &stdin.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).*)));
}
pub fn fgetc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    _ = &__fp;
    return if (__builtin_expect(@as(c_long, @intFromBool(__fp.*._IO_read_ptr >= __fp.*._IO_read_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __uflow(__fp) else @as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).*)));
}
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub fn putchar(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    return putc(__c, stdout);
}
pub fn fputc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    var __stream = arg___stream;
    _ = &__stream;
    return if (__builtin_expect(@as(c_long, @intFromBool(__stream.*._IO_write_ptr >= __stream.*._IO_write_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __overflow(__stream, @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(__c)))))))) else @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(__c))));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })))));
}
pub fn putc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    var __stream = arg___stream;
    _ = &__stream;
    return if (__builtin_expect(@as(c_long, @intFromBool(__stream.*._IO_write_ptr >= __stream.*._IO_write_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __overflow(__stream, @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(__c)))))))) else @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(__c))));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })))));
}
pub fn putchar_unlocked(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    return if (__builtin_expect(@as(c_long, @intFromBool(stdout.*._IO_write_ptr >= stdout.*._IO_write_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __overflow(stdout, @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(__c)))))))) else @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(__c))));
        (blk_1: {
            const ref = &stdout.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })))));
}
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub fn feof_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    _ = &__stream;
    return @intFromBool((__stream.*._flags & @as(c_int, 16)) != @as(c_int, 0));
}
pub fn ferror_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    _ = &__stream;
    return @intFromBool((__stream.*._flags & @as(c_int, 32)) != @as(c_int, 0));
}
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_3 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_3,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const __s8 = i8;
pub const __u8 = u8;
pub const __s16 = c_short;
pub const __u16 = c_ushort;
pub const __s32 = c_int;
pub const __u32 = c_uint;
pub const __s64 = c_longlong;
pub const __u64 = c_ulonglong;
pub const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const __kernel_sighandler_t = ?*const fn (c_int) callconv(.C) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_old_dev_t = c_ulong;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
pub const __kernel_fsid_t = extern struct {
    val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_old_time_t = __kernel_long_t;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const __le16 = __u16;
pub const __be16 = __u16;
pub const __le32 = __u32;
pub const __be32 = __u32;
pub const __le64 = __u64;
pub const __be64 = __u64;
pub const __sum16 = __u16;
pub const __wsum = __u32;
pub const __poll_t = c_uint;
pub const BPF_REG_0: c_int = 0;
pub const BPF_REG_1: c_int = 1;
pub const BPF_REG_2: c_int = 2;
pub const BPF_REG_3: c_int = 3;
pub const BPF_REG_4: c_int = 4;
pub const BPF_REG_5: c_int = 5;
pub const BPF_REG_6: c_int = 6;
pub const BPF_REG_7: c_int = 7;
pub const BPF_REG_8: c_int = 8;
pub const BPF_REG_9: c_int = 9;
pub const BPF_REG_10: c_int = 10;
pub const __MAX_BPF_REG: c_int = 11;
const enum_unnamed_4 = c_uint;
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:73:7: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_insn = opaque {};
pub const struct_bpf_lpm_trie_key = extern struct {
    prefixlen: __u32 align(4) = @import("std").mem.zeroes(__u32),
    pub fn data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 4)));
    }
};
pub const struct_bpf_cgroup_storage_key = extern struct {
    cgroup_inode_id: __u64 = @import("std").mem.zeroes(__u64),
    attach_type: __u32 = @import("std").mem.zeroes(__u32),
};
pub const BPF_CGROUP_ITER_ORDER_UNSPEC: c_int = 0;
pub const BPF_CGROUP_ITER_SELF_ONLY: c_int = 1;
pub const BPF_CGROUP_ITER_DESCENDANTS_PRE: c_int = 2;
pub const BPF_CGROUP_ITER_DESCENDANTS_POST: c_int = 3;
pub const BPF_CGROUP_ITER_ANCESTORS_UP: c_int = 4;
pub const enum_bpf_cgroup_iter_order = c_uint;
const struct_unnamed_5 = extern struct {
    map_fd: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_6 = extern struct {
    order: enum_bpf_cgroup_iter_order = @import("std").mem.zeroes(enum_bpf_cgroup_iter_order),
    cgroup_fd: __u32 = @import("std").mem.zeroes(__u32),
    cgroup_id: __u64 = @import("std").mem.zeroes(__u64),
};
const struct_unnamed_7 = extern struct {
    tid: __u32 = @import("std").mem.zeroes(__u32),
    pid: __u32 = @import("std").mem.zeroes(__u32),
    pid_fd: __u32 = @import("std").mem.zeroes(__u32),
};
pub const union_bpf_iter_link_info = extern union {
    map: struct_unnamed_5,
    cgroup: struct_unnamed_6,
    task: struct_unnamed_7,
};
pub const BPF_MAP_CREATE: c_int = 0;
pub const BPF_MAP_LOOKUP_ELEM: c_int = 1;
pub const BPF_MAP_UPDATE_ELEM: c_int = 2;
pub const BPF_MAP_DELETE_ELEM: c_int = 3;
pub const BPF_MAP_GET_NEXT_KEY: c_int = 4;
pub const BPF_PROG_LOAD: c_int = 5;
pub const BPF_OBJ_PIN: c_int = 6;
pub const BPF_OBJ_GET: c_int = 7;
pub const BPF_PROG_ATTACH: c_int = 8;
pub const BPF_PROG_DETACH: c_int = 9;
pub const BPF_PROG_TEST_RUN: c_int = 10;
pub const BPF_PROG_RUN: c_int = 10;
pub const BPF_PROG_GET_NEXT_ID: c_int = 11;
pub const BPF_MAP_GET_NEXT_ID: c_int = 12;
pub const BPF_PROG_GET_FD_BY_ID: c_int = 13;
pub const BPF_MAP_GET_FD_BY_ID: c_int = 14;
pub const BPF_OBJ_GET_INFO_BY_FD: c_int = 15;
pub const BPF_PROG_QUERY: c_int = 16;
pub const BPF_RAW_TRACEPOINT_OPEN: c_int = 17;
pub const BPF_BTF_LOAD: c_int = 18;
pub const BPF_BTF_GET_FD_BY_ID: c_int = 19;
pub const BPF_TASK_FD_QUERY: c_int = 20;
pub const BPF_MAP_LOOKUP_AND_DELETE_ELEM: c_int = 21;
pub const BPF_MAP_FREEZE: c_int = 22;
pub const BPF_BTF_GET_NEXT_ID: c_int = 23;
pub const BPF_MAP_LOOKUP_BATCH: c_int = 24;
pub const BPF_MAP_LOOKUP_AND_DELETE_BATCH: c_int = 25;
pub const BPF_MAP_UPDATE_BATCH: c_int = 26;
pub const BPF_MAP_DELETE_BATCH: c_int = 27;
pub const BPF_LINK_CREATE: c_int = 28;
pub const BPF_LINK_UPDATE: c_int = 29;
pub const BPF_LINK_GET_FD_BY_ID: c_int = 30;
pub const BPF_LINK_GET_NEXT_ID: c_int = 31;
pub const BPF_ENABLE_STATS: c_int = 32;
pub const BPF_ITER_CREATE: c_int = 33;
pub const BPF_LINK_DETACH: c_int = 34;
pub const BPF_PROG_BIND_MAP: c_int = 35;
pub const enum_bpf_cmd = c_uint;
pub const BPF_MAP_TYPE_UNSPEC: c_int = 0;
pub const BPF_MAP_TYPE_HASH: c_int = 1;
pub const BPF_MAP_TYPE_ARRAY: c_int = 2;
pub const BPF_MAP_TYPE_PROG_ARRAY: c_int = 3;
pub const BPF_MAP_TYPE_PERF_EVENT_ARRAY: c_int = 4;
pub const BPF_MAP_TYPE_PERCPU_HASH: c_int = 5;
pub const BPF_MAP_TYPE_PERCPU_ARRAY: c_int = 6;
pub const BPF_MAP_TYPE_STACK_TRACE: c_int = 7;
pub const BPF_MAP_TYPE_CGROUP_ARRAY: c_int = 8;
pub const BPF_MAP_TYPE_LRU_HASH: c_int = 9;
pub const BPF_MAP_TYPE_LRU_PERCPU_HASH: c_int = 10;
pub const BPF_MAP_TYPE_LPM_TRIE: c_int = 11;
pub const BPF_MAP_TYPE_ARRAY_OF_MAPS: c_int = 12;
pub const BPF_MAP_TYPE_HASH_OF_MAPS: c_int = 13;
pub const BPF_MAP_TYPE_DEVMAP: c_int = 14;
pub const BPF_MAP_TYPE_SOCKMAP: c_int = 15;
pub const BPF_MAP_TYPE_CPUMAP: c_int = 16;
pub const BPF_MAP_TYPE_XSKMAP: c_int = 17;
pub const BPF_MAP_TYPE_SOCKHASH: c_int = 18;
pub const BPF_MAP_TYPE_CGROUP_STORAGE_DEPRECATED: c_int = 19;
pub const BPF_MAP_TYPE_CGROUP_STORAGE: c_int = 19;
pub const BPF_MAP_TYPE_REUSEPORT_SOCKARRAY: c_int = 20;
pub const BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE: c_int = 21;
pub const BPF_MAP_TYPE_QUEUE: c_int = 22;
pub const BPF_MAP_TYPE_STACK: c_int = 23;
pub const BPF_MAP_TYPE_SK_STORAGE: c_int = 24;
pub const BPF_MAP_TYPE_DEVMAP_HASH: c_int = 25;
pub const BPF_MAP_TYPE_STRUCT_OPS: c_int = 26;
pub const BPF_MAP_TYPE_RINGBUF: c_int = 27;
pub const BPF_MAP_TYPE_INODE_STORAGE: c_int = 28;
pub const BPF_MAP_TYPE_TASK_STORAGE: c_int = 29;
pub const BPF_MAP_TYPE_BLOOM_FILTER: c_int = 30;
pub const BPF_MAP_TYPE_USER_RINGBUF: c_int = 31;
pub const BPF_MAP_TYPE_CGRP_STORAGE: c_int = 32;
pub const enum_bpf_map_type = c_uint;
pub const BPF_PROG_TYPE_UNSPEC: c_int = 0;
pub const BPF_PROG_TYPE_SOCKET_FILTER: c_int = 1;
pub const BPF_PROG_TYPE_KPROBE: c_int = 2;
pub const BPF_PROG_TYPE_SCHED_CLS: c_int = 3;
pub const BPF_PROG_TYPE_SCHED_ACT: c_int = 4;
pub const BPF_PROG_TYPE_TRACEPOINT: c_int = 5;
pub const BPF_PROG_TYPE_XDP: c_int = 6;
pub const BPF_PROG_TYPE_PERF_EVENT: c_int = 7;
pub const BPF_PROG_TYPE_CGROUP_SKB: c_int = 8;
pub const BPF_PROG_TYPE_CGROUP_SOCK: c_int = 9;
pub const BPF_PROG_TYPE_LWT_IN: c_int = 10;
pub const BPF_PROG_TYPE_LWT_OUT: c_int = 11;
pub const BPF_PROG_TYPE_LWT_XMIT: c_int = 12;
pub const BPF_PROG_TYPE_SOCK_OPS: c_int = 13;
pub const BPF_PROG_TYPE_SK_SKB: c_int = 14;
pub const BPF_PROG_TYPE_CGROUP_DEVICE: c_int = 15;
pub const BPF_PROG_TYPE_SK_MSG: c_int = 16;
pub const BPF_PROG_TYPE_RAW_TRACEPOINT: c_int = 17;
pub const BPF_PROG_TYPE_CGROUP_SOCK_ADDR: c_int = 18;
pub const BPF_PROG_TYPE_LWT_SEG6LOCAL: c_int = 19;
pub const BPF_PROG_TYPE_LIRC_MODE2: c_int = 20;
pub const BPF_PROG_TYPE_SK_REUSEPORT: c_int = 21;
pub const BPF_PROG_TYPE_FLOW_DISSECTOR: c_int = 22;
pub const BPF_PROG_TYPE_CGROUP_SYSCTL: c_int = 23;
pub const BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE: c_int = 24;
pub const BPF_PROG_TYPE_CGROUP_SOCKOPT: c_int = 25;
pub const BPF_PROG_TYPE_TRACING: c_int = 26;
pub const BPF_PROG_TYPE_STRUCT_OPS: c_int = 27;
pub const BPF_PROG_TYPE_EXT: c_int = 28;
pub const BPF_PROG_TYPE_LSM: c_int = 29;
pub const BPF_PROG_TYPE_SK_LOOKUP: c_int = 30;
pub const BPF_PROG_TYPE_SYSCALL: c_int = 31;
pub const enum_bpf_prog_type = c_uint;
pub const BPF_CGROUP_INET_INGRESS: c_int = 0;
pub const BPF_CGROUP_INET_EGRESS: c_int = 1;
pub const BPF_CGROUP_INET_SOCK_CREATE: c_int = 2;
pub const BPF_CGROUP_SOCK_OPS: c_int = 3;
pub const BPF_SK_SKB_STREAM_PARSER: c_int = 4;
pub const BPF_SK_SKB_STREAM_VERDICT: c_int = 5;
pub const BPF_CGROUP_DEVICE: c_int = 6;
pub const BPF_SK_MSG_VERDICT: c_int = 7;
pub const BPF_CGROUP_INET4_BIND: c_int = 8;
pub const BPF_CGROUP_INET6_BIND: c_int = 9;
pub const BPF_CGROUP_INET4_CONNECT: c_int = 10;
pub const BPF_CGROUP_INET6_CONNECT: c_int = 11;
pub const BPF_CGROUP_INET4_POST_BIND: c_int = 12;
pub const BPF_CGROUP_INET6_POST_BIND: c_int = 13;
pub const BPF_CGROUP_UDP4_SENDMSG: c_int = 14;
pub const BPF_CGROUP_UDP6_SENDMSG: c_int = 15;
pub const BPF_LIRC_MODE2: c_int = 16;
pub const BPF_FLOW_DISSECTOR: c_int = 17;
pub const BPF_CGROUP_SYSCTL: c_int = 18;
pub const BPF_CGROUP_UDP4_RECVMSG: c_int = 19;
pub const BPF_CGROUP_UDP6_RECVMSG: c_int = 20;
pub const BPF_CGROUP_GETSOCKOPT: c_int = 21;
pub const BPF_CGROUP_SETSOCKOPT: c_int = 22;
pub const BPF_TRACE_RAW_TP: c_int = 23;
pub const BPF_TRACE_FENTRY: c_int = 24;
pub const BPF_TRACE_FEXIT: c_int = 25;
pub const BPF_MODIFY_RETURN: c_int = 26;
pub const BPF_LSM_MAC: c_int = 27;
pub const BPF_TRACE_ITER: c_int = 28;
pub const BPF_CGROUP_INET4_GETPEERNAME: c_int = 29;
pub const BPF_CGROUP_INET6_GETPEERNAME: c_int = 30;
pub const BPF_CGROUP_INET4_GETSOCKNAME: c_int = 31;
pub const BPF_CGROUP_INET6_GETSOCKNAME: c_int = 32;
pub const BPF_XDP_DEVMAP: c_int = 33;
pub const BPF_CGROUP_INET_SOCK_RELEASE: c_int = 34;
pub const BPF_XDP_CPUMAP: c_int = 35;
pub const BPF_SK_LOOKUP: c_int = 36;
pub const BPF_XDP: c_int = 37;
pub const BPF_SK_SKB_VERDICT: c_int = 38;
pub const BPF_SK_REUSEPORT_SELECT: c_int = 39;
pub const BPF_SK_REUSEPORT_SELECT_OR_MIGRATE: c_int = 40;
pub const BPF_PERF_EVENT: c_int = 41;
pub const BPF_TRACE_KPROBE_MULTI: c_int = 42;
pub const BPF_LSM_CGROUP: c_int = 43;
pub const __MAX_BPF_ATTACH_TYPE: c_int = 44;
pub const enum_bpf_attach_type = c_uint;
pub const BPF_LINK_TYPE_UNSPEC: c_int = 0;
pub const BPF_LINK_TYPE_RAW_TRACEPOINT: c_int = 1;
pub const BPF_LINK_TYPE_TRACING: c_int = 2;
pub const BPF_LINK_TYPE_CGROUP: c_int = 3;
pub const BPF_LINK_TYPE_ITER: c_int = 4;
pub const BPF_LINK_TYPE_NETNS: c_int = 5;
pub const BPF_LINK_TYPE_XDP: c_int = 6;
pub const BPF_LINK_TYPE_PERF_EVENT: c_int = 7;
pub const BPF_LINK_TYPE_KPROBE_MULTI: c_int = 8;
pub const BPF_LINK_TYPE_STRUCT_OPS: c_int = 9;
pub const MAX_BPF_LINK_TYPE: c_int = 10;
pub const enum_bpf_link_type = c_uint;
pub const BPF_ANY: c_int = 0;
pub const BPF_NOEXIST: c_int = 1;
pub const BPF_EXIST: c_int = 2;
pub const BPF_F_LOCK: c_int = 4;
const enum_unnamed_8 = c_uint;
pub const BPF_F_NO_PREALLOC: c_int = 1;
pub const BPF_F_NO_COMMON_LRU: c_int = 2;
pub const BPF_F_NUMA_NODE: c_int = 4;
pub const BPF_F_RDONLY: c_int = 8;
pub const BPF_F_WRONLY: c_int = 16;
pub const BPF_F_STACK_BUILD_ID: c_int = 32;
pub const BPF_F_ZERO_SEED: c_int = 64;
pub const BPF_F_RDONLY_PROG: c_int = 128;
pub const BPF_F_WRONLY_PROG: c_int = 256;
pub const BPF_F_CLONE: c_int = 512;
pub const BPF_F_MMAPABLE: c_int = 1024;
pub const BPF_F_PRESERVE_ELEMS: c_int = 2048;
pub const BPF_F_INNER_MAP: c_int = 4096;
const enum_unnamed_9 = c_uint;
pub const BPF_STATS_RUN_TIME: c_int = 0;
pub const enum_bpf_stats_type = c_uint;
pub const BPF_STACK_BUILD_ID_EMPTY: c_int = 0;
pub const BPF_STACK_BUILD_ID_VALID: c_int = 1;
pub const BPF_STACK_BUILD_ID_IP: c_int = 2;
pub const enum_bpf_stack_build_id_status = c_uint;
const union_unnamed_10 = extern union {
    offset: __u64,
    ip: __u64,
};
pub const struct_bpf_stack_build_id = extern struct {
    status: __s32 = @import("std").mem.zeroes(__s32),
    build_id: [20]u8 = @import("std").mem.zeroes([20]u8),
    unnamed_0: union_unnamed_10 = @import("std").mem.zeroes(union_unnamed_10),
};
const struct_unnamed_11 = extern struct {
    map_type: __u32 = @import("std").mem.zeroes(__u32),
    key_size: __u32 = @import("std").mem.zeroes(__u32),
    value_size: __u32 = @import("std").mem.zeroes(__u32),
    max_entries: __u32 = @import("std").mem.zeroes(__u32),
    map_flags: __u32 = @import("std").mem.zeroes(__u32),
    inner_map_fd: __u32 = @import("std").mem.zeroes(__u32),
    numa_node: __u32 = @import("std").mem.zeroes(__u32),
    map_name: [16]u8 = @import("std").mem.zeroes([16]u8),
    map_ifindex: __u32 = @import("std").mem.zeroes(__u32),
    btf_fd: __u32 = @import("std").mem.zeroes(__u32),
    btf_key_type_id: __u32 = @import("std").mem.zeroes(__u32),
    btf_value_type_id: __u32 = @import("std").mem.zeroes(__u32),
    btf_vmlinux_value_type_id: __u32 = @import("std").mem.zeroes(__u32),
    map_extra: __u64 = @import("std").mem.zeroes(__u64),
};
const union_unnamed_13 = extern union {
    value: __u64 align(8),
    next_key: __u64 align(8),
};
const struct_unnamed_12 = extern struct {
    map_fd: __u32 = @import("std").mem.zeroes(__u32),
    key: __u64 align(8) = @import("std").mem.zeroes(__u64),
    unnamed_0: union_unnamed_13 = @import("std").mem.zeroes(union_unnamed_13),
    flags: __u64 = @import("std").mem.zeroes(__u64),
};
const struct_unnamed_14 = extern struct {
    in_batch: __u64 align(8) = @import("std").mem.zeroes(__u64),
    out_batch: __u64 align(8) = @import("std").mem.zeroes(__u64),
    keys: __u64 align(8) = @import("std").mem.zeroes(__u64),
    values: __u64 align(8) = @import("std").mem.zeroes(__u64),
    count: __u32 = @import("std").mem.zeroes(__u32),
    map_fd: __u32 = @import("std").mem.zeroes(__u32),
    elem_flags: __u64 = @import("std").mem.zeroes(__u64),
    flags: __u64 = @import("std").mem.zeroes(__u64),
};
const union_unnamed_16 = extern union {
    attach_prog_fd: __u32,
    attach_btf_obj_fd: __u32,
};
const struct_unnamed_15 = extern struct {
    prog_type: __u32 = @import("std").mem.zeroes(__u32),
    insn_cnt: __u32 = @import("std").mem.zeroes(__u32),
    insns: __u64 align(8) = @import("std").mem.zeroes(__u64),
    license: __u64 align(8) = @import("std").mem.zeroes(__u64),
    log_level: __u32 = @import("std").mem.zeroes(__u32),
    log_size: __u32 = @import("std").mem.zeroes(__u32),
    log_buf: __u64 align(8) = @import("std").mem.zeroes(__u64),
    kern_version: __u32 = @import("std").mem.zeroes(__u32),
    prog_flags: __u32 = @import("std").mem.zeroes(__u32),
    prog_name: [16]u8 = @import("std").mem.zeroes([16]u8),
    prog_ifindex: __u32 = @import("std").mem.zeroes(__u32),
    expected_attach_type: __u32 = @import("std").mem.zeroes(__u32),
    prog_btf_fd: __u32 = @import("std").mem.zeroes(__u32),
    func_info_rec_size: __u32 = @import("std").mem.zeroes(__u32),
    func_info: __u64 align(8) = @import("std").mem.zeroes(__u64),
    func_info_cnt: __u32 = @import("std").mem.zeroes(__u32),
    line_info_rec_size: __u32 = @import("std").mem.zeroes(__u32),
    line_info: __u64 align(8) = @import("std").mem.zeroes(__u64),
    line_info_cnt: __u32 = @import("std").mem.zeroes(__u32),
    attach_btf_id: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_16 = @import("std").mem.zeroes(union_unnamed_16),
    core_relo_cnt: __u32 = @import("std").mem.zeroes(__u32),
    fd_array: __u64 align(8) = @import("std").mem.zeroes(__u64),
    core_relos: __u64 align(8) = @import("std").mem.zeroes(__u64),
    core_relo_rec_size: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_17 = extern struct {
    pathname: __u64 align(8) = @import("std").mem.zeroes(__u64),
    bpf_fd: __u32 = @import("std").mem.zeroes(__u32),
    file_flags: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_18 = extern struct {
    target_fd: __u32 = @import("std").mem.zeroes(__u32),
    attach_bpf_fd: __u32 = @import("std").mem.zeroes(__u32),
    attach_type: __u32 = @import("std").mem.zeroes(__u32),
    attach_flags: __u32 = @import("std").mem.zeroes(__u32),
    replace_bpf_fd: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_19 = extern struct {
    prog_fd: __u32 = @import("std").mem.zeroes(__u32),
    retval: __u32 = @import("std").mem.zeroes(__u32),
    data_size_in: __u32 = @import("std").mem.zeroes(__u32),
    data_size_out: __u32 = @import("std").mem.zeroes(__u32),
    data_in: __u64 align(8) = @import("std").mem.zeroes(__u64),
    data_out: __u64 align(8) = @import("std").mem.zeroes(__u64),
    repeat: __u32 = @import("std").mem.zeroes(__u32),
    duration: __u32 = @import("std").mem.zeroes(__u32),
    ctx_size_in: __u32 = @import("std").mem.zeroes(__u32),
    ctx_size_out: __u32 = @import("std").mem.zeroes(__u32),
    ctx_in: __u64 align(8) = @import("std").mem.zeroes(__u64),
    ctx_out: __u64 align(8) = @import("std").mem.zeroes(__u64),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    cpu: __u32 = @import("std").mem.zeroes(__u32),
    batch_size: __u32 = @import("std").mem.zeroes(__u32),
};
const union_unnamed_21 = extern union {
    start_id: __u32,
    prog_id: __u32,
    map_id: __u32,
    btf_id: __u32,
    link_id: __u32,
};
const struct_unnamed_20 = extern struct {
    unnamed_0: union_unnamed_21 = @import("std").mem.zeroes(union_unnamed_21),
    next_id: __u32 = @import("std").mem.zeroes(__u32),
    open_flags: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_22 = extern struct {
    bpf_fd: __u32 = @import("std").mem.zeroes(__u32),
    info_len: __u32 = @import("std").mem.zeroes(__u32),
    info: __u64 align(8) = @import("std").mem.zeroes(__u64),
};
const struct_unnamed_23 = extern struct {
    target_fd: __u32 = @import("std").mem.zeroes(__u32),
    attach_type: __u32 = @import("std").mem.zeroes(__u32),
    query_flags: __u32 = @import("std").mem.zeroes(__u32),
    attach_flags: __u32 = @import("std").mem.zeroes(__u32),
    prog_ids: __u64 align(8) = @import("std").mem.zeroes(__u64),
    prog_cnt: __u32 = @import("std").mem.zeroes(__u32),
    prog_attach_flags: __u64 align(8) = @import("std").mem.zeroes(__u64),
};
const struct_unnamed_24 = extern struct {
    name: __u64 = @import("std").mem.zeroes(__u64),
    prog_fd: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_25 = extern struct {
    btf: __u64 align(8) = @import("std").mem.zeroes(__u64),
    btf_log_buf: __u64 align(8) = @import("std").mem.zeroes(__u64),
    btf_size: __u32 = @import("std").mem.zeroes(__u32),
    btf_log_size: __u32 = @import("std").mem.zeroes(__u32),
    btf_log_level: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_26 = extern struct {
    pid: __u32 = @import("std").mem.zeroes(__u32),
    fd: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    buf_len: __u32 = @import("std").mem.zeroes(__u32),
    buf: __u64 align(8) = @import("std").mem.zeroes(__u64),
    prog_id: __u32 = @import("std").mem.zeroes(__u32),
    fd_type: __u32 = @import("std").mem.zeroes(__u32),
    probe_offset: __u64 = @import("std").mem.zeroes(__u64),
    probe_addr: __u64 = @import("std").mem.zeroes(__u64),
};
const union_unnamed_28 = extern union {
    target_fd: __u32,
    target_ifindex: __u32,
};
const struct_unnamed_30 = extern struct {
    iter_info: __u64 align(8) = @import("std").mem.zeroes(__u64),
    iter_info_len: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_31 = extern struct {
    bpf_cookie: __u64 = @import("std").mem.zeroes(__u64),
};
const struct_unnamed_32 = extern struct {
    flags: __u32 = @import("std").mem.zeroes(__u32),
    cnt: __u32 = @import("std").mem.zeroes(__u32),
    syms: __u64 align(8) = @import("std").mem.zeroes(__u64),
    addrs: __u64 align(8) = @import("std").mem.zeroes(__u64),
    cookies: __u64 align(8) = @import("std").mem.zeroes(__u64),
};
const struct_unnamed_33 = extern struct {
    target_btf_id: __u32 = @import("std").mem.zeroes(__u32),
    cookie: __u64 = @import("std").mem.zeroes(__u64),
};
const union_unnamed_29 = extern union {
    target_btf_id: __u32,
    unnamed_0: struct_unnamed_30,
    perf_event: struct_unnamed_31,
    kprobe_multi: struct_unnamed_32,
    tracing: struct_unnamed_33,
};
const struct_unnamed_27 = extern struct {
    prog_fd: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_28 = @import("std").mem.zeroes(union_unnamed_28),
    attach_type: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_1: union_unnamed_29 = @import("std").mem.zeroes(union_unnamed_29),
};
const struct_unnamed_34 = extern struct {
    link_fd: __u32 = @import("std").mem.zeroes(__u32),
    new_prog_fd: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    old_prog_fd: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_35 = extern struct {
    link_fd: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_36 = extern struct {
    type: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_37 = extern struct {
    link_fd: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_38 = extern struct {
    prog_fd: __u32 = @import("std").mem.zeroes(__u32),
    map_fd: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub const union_bpf_attr = extern union {
    unnamed_0: struct_unnamed_11,
    unnamed_1: struct_unnamed_12,
    batch: struct_unnamed_14,
    unnamed_2: struct_unnamed_15,
    unnamed_3: struct_unnamed_17,
    unnamed_4: struct_unnamed_18,
    @"test": struct_unnamed_19,
    unnamed_5: struct_unnamed_20,
    info: struct_unnamed_22,
    query: struct_unnamed_23,
    raw_tracepoint: struct_unnamed_24,
    unnamed_6: struct_unnamed_25,
    task_fd_query: struct_unnamed_26,
    link_create: struct_unnamed_27,
    link_update: struct_unnamed_34,
    link_detach: struct_unnamed_35,
    enable_stats: struct_unnamed_36,
    iter_create: struct_unnamed_37,
    prog_bind_map: struct_unnamed_38,
};
pub const BPF_FUNC_unspec: c_int = 0;
pub const BPF_FUNC_map_lookup_elem: c_int = 1;
pub const BPF_FUNC_map_update_elem: c_int = 2;
pub const BPF_FUNC_map_delete_elem: c_int = 3;
pub const BPF_FUNC_probe_read: c_int = 4;
pub const BPF_FUNC_ktime_get_ns: c_int = 5;
pub const BPF_FUNC_trace_printk: c_int = 6;
pub const BPF_FUNC_get_prandom_u32: c_int = 7;
pub const BPF_FUNC_get_smp_processor_id: c_int = 8;
pub const BPF_FUNC_skb_store_bytes: c_int = 9;
pub const BPF_FUNC_l3_csum_replace: c_int = 10;
pub const BPF_FUNC_l4_csum_replace: c_int = 11;
pub const BPF_FUNC_tail_call: c_int = 12;
pub const BPF_FUNC_clone_redirect: c_int = 13;
pub const BPF_FUNC_get_current_pid_tgid: c_int = 14;
pub const BPF_FUNC_get_current_uid_gid: c_int = 15;
pub const BPF_FUNC_get_current_comm: c_int = 16;
pub const BPF_FUNC_get_cgroup_classid: c_int = 17;
pub const BPF_FUNC_skb_vlan_push: c_int = 18;
pub const BPF_FUNC_skb_vlan_pop: c_int = 19;
pub const BPF_FUNC_skb_get_tunnel_key: c_int = 20;
pub const BPF_FUNC_skb_set_tunnel_key: c_int = 21;
pub const BPF_FUNC_perf_event_read: c_int = 22;
pub const BPF_FUNC_redirect: c_int = 23;
pub const BPF_FUNC_get_route_realm: c_int = 24;
pub const BPF_FUNC_perf_event_output: c_int = 25;
pub const BPF_FUNC_skb_load_bytes: c_int = 26;
pub const BPF_FUNC_get_stackid: c_int = 27;
pub const BPF_FUNC_csum_diff: c_int = 28;
pub const BPF_FUNC_skb_get_tunnel_opt: c_int = 29;
pub const BPF_FUNC_skb_set_tunnel_opt: c_int = 30;
pub const BPF_FUNC_skb_change_proto: c_int = 31;
pub const BPF_FUNC_skb_change_type: c_int = 32;
pub const BPF_FUNC_skb_under_cgroup: c_int = 33;
pub const BPF_FUNC_get_hash_recalc: c_int = 34;
pub const BPF_FUNC_get_current_task: c_int = 35;
pub const BPF_FUNC_probe_write_user: c_int = 36;
pub const BPF_FUNC_current_task_under_cgroup: c_int = 37;
pub const BPF_FUNC_skb_change_tail: c_int = 38;
pub const BPF_FUNC_skb_pull_data: c_int = 39;
pub const BPF_FUNC_csum_update: c_int = 40;
pub const BPF_FUNC_set_hash_invalid: c_int = 41;
pub const BPF_FUNC_get_numa_node_id: c_int = 42;
pub const BPF_FUNC_skb_change_head: c_int = 43;
pub const BPF_FUNC_xdp_adjust_head: c_int = 44;
pub const BPF_FUNC_probe_read_str: c_int = 45;
pub const BPF_FUNC_get_socket_cookie: c_int = 46;
pub const BPF_FUNC_get_socket_uid: c_int = 47;
pub const BPF_FUNC_set_hash: c_int = 48;
pub const BPF_FUNC_setsockopt: c_int = 49;
pub const BPF_FUNC_skb_adjust_room: c_int = 50;
pub const BPF_FUNC_redirect_map: c_int = 51;
pub const BPF_FUNC_sk_redirect_map: c_int = 52;
pub const BPF_FUNC_sock_map_update: c_int = 53;
pub const BPF_FUNC_xdp_adjust_meta: c_int = 54;
pub const BPF_FUNC_perf_event_read_value: c_int = 55;
pub const BPF_FUNC_perf_prog_read_value: c_int = 56;
pub const BPF_FUNC_getsockopt: c_int = 57;
pub const BPF_FUNC_override_return: c_int = 58;
pub const BPF_FUNC_sock_ops_cb_flags_set: c_int = 59;
pub const BPF_FUNC_msg_redirect_map: c_int = 60;
pub const BPF_FUNC_msg_apply_bytes: c_int = 61;
pub const BPF_FUNC_msg_cork_bytes: c_int = 62;
pub const BPF_FUNC_msg_pull_data: c_int = 63;
pub const BPF_FUNC_bind: c_int = 64;
pub const BPF_FUNC_xdp_adjust_tail: c_int = 65;
pub const BPF_FUNC_skb_get_xfrm_state: c_int = 66;
pub const BPF_FUNC_get_stack: c_int = 67;
pub const BPF_FUNC_skb_load_bytes_relative: c_int = 68;
pub const BPF_FUNC_fib_lookup: c_int = 69;
pub const BPF_FUNC_sock_hash_update: c_int = 70;
pub const BPF_FUNC_msg_redirect_hash: c_int = 71;
pub const BPF_FUNC_sk_redirect_hash: c_int = 72;
pub const BPF_FUNC_lwt_push_encap: c_int = 73;
pub const BPF_FUNC_lwt_seg6_store_bytes: c_int = 74;
pub const BPF_FUNC_lwt_seg6_adjust_srh: c_int = 75;
pub const BPF_FUNC_lwt_seg6_action: c_int = 76;
pub const BPF_FUNC_rc_repeat: c_int = 77;
pub const BPF_FUNC_rc_keydown: c_int = 78;
pub const BPF_FUNC_skb_cgroup_id: c_int = 79;
pub const BPF_FUNC_get_current_cgroup_id: c_int = 80;
pub const BPF_FUNC_get_local_storage: c_int = 81;
pub const BPF_FUNC_sk_select_reuseport: c_int = 82;
pub const BPF_FUNC_skb_ancestor_cgroup_id: c_int = 83;
pub const BPF_FUNC_sk_lookup_tcp: c_int = 84;
pub const BPF_FUNC_sk_lookup_udp: c_int = 85;
pub const BPF_FUNC_sk_release: c_int = 86;
pub const BPF_FUNC_map_push_elem: c_int = 87;
pub const BPF_FUNC_map_pop_elem: c_int = 88;
pub const BPF_FUNC_map_peek_elem: c_int = 89;
pub const BPF_FUNC_msg_push_data: c_int = 90;
pub const BPF_FUNC_msg_pop_data: c_int = 91;
pub const BPF_FUNC_rc_pointer_rel: c_int = 92;
pub const BPF_FUNC_spin_lock: c_int = 93;
pub const BPF_FUNC_spin_unlock: c_int = 94;
pub const BPF_FUNC_sk_fullsock: c_int = 95;
pub const BPF_FUNC_tcp_sock: c_int = 96;
pub const BPF_FUNC_skb_ecn_set_ce: c_int = 97;
pub const BPF_FUNC_get_listener_sock: c_int = 98;
pub const BPF_FUNC_skc_lookup_tcp: c_int = 99;
pub const BPF_FUNC_tcp_check_syncookie: c_int = 100;
pub const BPF_FUNC_sysctl_get_name: c_int = 101;
pub const BPF_FUNC_sysctl_get_current_value: c_int = 102;
pub const BPF_FUNC_sysctl_get_new_value: c_int = 103;
pub const BPF_FUNC_sysctl_set_new_value: c_int = 104;
pub const BPF_FUNC_strtol: c_int = 105;
pub const BPF_FUNC_strtoul: c_int = 106;
pub const BPF_FUNC_sk_storage_get: c_int = 107;
pub const BPF_FUNC_sk_storage_delete: c_int = 108;
pub const BPF_FUNC_send_signal: c_int = 109;
pub const BPF_FUNC_tcp_gen_syncookie: c_int = 110;
pub const BPF_FUNC_skb_output: c_int = 111;
pub const BPF_FUNC_probe_read_user: c_int = 112;
pub const BPF_FUNC_probe_read_kernel: c_int = 113;
pub const BPF_FUNC_probe_read_user_str: c_int = 114;
pub const BPF_FUNC_probe_read_kernel_str: c_int = 115;
pub const BPF_FUNC_tcp_send_ack: c_int = 116;
pub const BPF_FUNC_send_signal_thread: c_int = 117;
pub const BPF_FUNC_jiffies64: c_int = 118;
pub const BPF_FUNC_read_branch_records: c_int = 119;
pub const BPF_FUNC_get_ns_current_pid_tgid: c_int = 120;
pub const BPF_FUNC_xdp_output: c_int = 121;
pub const BPF_FUNC_get_netns_cookie: c_int = 122;
pub const BPF_FUNC_get_current_ancestor_cgroup_id: c_int = 123;
pub const BPF_FUNC_sk_assign: c_int = 124;
pub const BPF_FUNC_ktime_get_boot_ns: c_int = 125;
pub const BPF_FUNC_seq_printf: c_int = 126;
pub const BPF_FUNC_seq_write: c_int = 127;
pub const BPF_FUNC_sk_cgroup_id: c_int = 128;
pub const BPF_FUNC_sk_ancestor_cgroup_id: c_int = 129;
pub const BPF_FUNC_ringbuf_output: c_int = 130;
pub const BPF_FUNC_ringbuf_reserve: c_int = 131;
pub const BPF_FUNC_ringbuf_submit: c_int = 132;
pub const BPF_FUNC_ringbuf_discard: c_int = 133;
pub const BPF_FUNC_ringbuf_query: c_int = 134;
pub const BPF_FUNC_csum_level: c_int = 135;
pub const BPF_FUNC_skc_to_tcp6_sock: c_int = 136;
pub const BPF_FUNC_skc_to_tcp_sock: c_int = 137;
pub const BPF_FUNC_skc_to_tcp_timewait_sock: c_int = 138;
pub const BPF_FUNC_skc_to_tcp_request_sock: c_int = 139;
pub const BPF_FUNC_skc_to_udp6_sock: c_int = 140;
pub const BPF_FUNC_get_task_stack: c_int = 141;
pub const BPF_FUNC_load_hdr_opt: c_int = 142;
pub const BPF_FUNC_store_hdr_opt: c_int = 143;
pub const BPF_FUNC_reserve_hdr_opt: c_int = 144;
pub const BPF_FUNC_inode_storage_get: c_int = 145;
pub const BPF_FUNC_inode_storage_delete: c_int = 146;
pub const BPF_FUNC_d_path: c_int = 147;
pub const BPF_FUNC_copy_from_user: c_int = 148;
pub const BPF_FUNC_snprintf_btf: c_int = 149;
pub const BPF_FUNC_seq_printf_btf: c_int = 150;
pub const BPF_FUNC_skb_cgroup_classid: c_int = 151;
pub const BPF_FUNC_redirect_neigh: c_int = 152;
pub const BPF_FUNC_per_cpu_ptr: c_int = 153;
pub const BPF_FUNC_this_cpu_ptr: c_int = 154;
pub const BPF_FUNC_redirect_peer: c_int = 155;
pub const BPF_FUNC_task_storage_get: c_int = 156;
pub const BPF_FUNC_task_storage_delete: c_int = 157;
pub const BPF_FUNC_get_current_task_btf: c_int = 158;
pub const BPF_FUNC_bprm_opts_set: c_int = 159;
pub const BPF_FUNC_ktime_get_coarse_ns: c_int = 160;
pub const BPF_FUNC_ima_inode_hash: c_int = 161;
pub const BPF_FUNC_sock_from_file: c_int = 162;
pub const BPF_FUNC_check_mtu: c_int = 163;
pub const BPF_FUNC_for_each_map_elem: c_int = 164;
pub const BPF_FUNC_snprintf: c_int = 165;
pub const BPF_FUNC_sys_bpf: c_int = 166;
pub const BPF_FUNC_btf_find_by_name_kind: c_int = 167;
pub const BPF_FUNC_sys_close: c_int = 168;
pub const BPF_FUNC_timer_init: c_int = 169;
pub const BPF_FUNC_timer_set_callback: c_int = 170;
pub const BPF_FUNC_timer_start: c_int = 171;
pub const BPF_FUNC_timer_cancel: c_int = 172;
pub const BPF_FUNC_get_func_ip: c_int = 173;
pub const BPF_FUNC_get_attach_cookie: c_int = 174;
pub const BPF_FUNC_task_pt_regs: c_int = 175;
pub const BPF_FUNC_get_branch_snapshot: c_int = 176;
pub const BPF_FUNC_trace_vprintk: c_int = 177;
pub const BPF_FUNC_skc_to_unix_sock: c_int = 178;
pub const BPF_FUNC_kallsyms_lookup_name: c_int = 179;
pub const BPF_FUNC_find_vma: c_int = 180;
pub const BPF_FUNC_loop: c_int = 181;
pub const BPF_FUNC_strncmp: c_int = 182;
pub const BPF_FUNC_get_func_arg: c_int = 183;
pub const BPF_FUNC_get_func_ret: c_int = 184;
pub const BPF_FUNC_get_func_arg_cnt: c_int = 185;
pub const BPF_FUNC_get_retval: c_int = 186;
pub const BPF_FUNC_set_retval: c_int = 187;
pub const BPF_FUNC_xdp_get_buff_len: c_int = 188;
pub const BPF_FUNC_xdp_load_bytes: c_int = 189;
pub const BPF_FUNC_xdp_store_bytes: c_int = 190;
pub const BPF_FUNC_copy_from_user_task: c_int = 191;
pub const BPF_FUNC_skb_set_tstamp: c_int = 192;
pub const BPF_FUNC_ima_file_hash: c_int = 193;
pub const BPF_FUNC_kptr_xchg: c_int = 194;
pub const BPF_FUNC_map_lookup_percpu_elem: c_int = 195;
pub const BPF_FUNC_skc_to_mptcp_sock: c_int = 196;
pub const BPF_FUNC_dynptr_from_mem: c_int = 197;
pub const BPF_FUNC_ringbuf_reserve_dynptr: c_int = 198;
pub const BPF_FUNC_ringbuf_submit_dynptr: c_int = 199;
pub const BPF_FUNC_ringbuf_discard_dynptr: c_int = 200;
pub const BPF_FUNC_dynptr_read: c_int = 201;
pub const BPF_FUNC_dynptr_write: c_int = 202;
pub const BPF_FUNC_dynptr_data: c_int = 203;
pub const BPF_FUNC_tcp_raw_gen_syncookie_ipv4: c_int = 204;
pub const BPF_FUNC_tcp_raw_gen_syncookie_ipv6: c_int = 205;
pub const BPF_FUNC_tcp_raw_check_syncookie_ipv4: c_int = 206;
pub const BPF_FUNC_tcp_raw_check_syncookie_ipv6: c_int = 207;
pub const BPF_FUNC_ktime_get_tai_ns: c_int = 208;
pub const BPF_FUNC_user_ringbuf_drain: c_int = 209;
pub const BPF_FUNC_cgrp_storage_get: c_int = 210;
pub const BPF_FUNC_cgrp_storage_delete: c_int = 211;
pub const __BPF_FUNC_MAX_ID: c_int = 212;
pub const enum_bpf_func_id = c_uint;
pub const BPF_F_RECOMPUTE_CSUM: c_int = 1;
pub const BPF_F_INVALIDATE_HASH: c_int = 2;
const enum_unnamed_39 = c_uint;
pub const BPF_F_HDR_FIELD_MASK: c_int = 15;
const enum_unnamed_40 = c_uint;
pub const BPF_F_PSEUDO_HDR: c_int = 16;
pub const BPF_F_MARK_MANGLED_0: c_int = 32;
pub const BPF_F_MARK_ENFORCE: c_int = 64;
const enum_unnamed_41 = c_uint;
pub const BPF_F_INGRESS: c_int = 1;
const enum_unnamed_42 = c_uint;
pub const BPF_F_TUNINFO_IPV6: c_int = 1;
const enum_unnamed_43 = c_uint;
pub const BPF_F_SKIP_FIELD_MASK: c_int = 255;
pub const BPF_F_USER_STACK: c_int = 256;
pub const BPF_F_FAST_STACK_CMP: c_int = 512;
pub const BPF_F_REUSE_STACKID: c_int = 1024;
pub const BPF_F_USER_BUILD_ID: c_int = 2048;
const enum_unnamed_44 = c_uint;
pub const BPF_F_ZERO_CSUM_TX: c_int = 2;
pub const BPF_F_DONT_FRAGMENT: c_int = 4;
pub const BPF_F_SEQ_NUMBER: c_int = 8;
pub const BPF_F_NO_TUNNEL_KEY: c_int = 16;
const enum_unnamed_45 = c_uint;
pub const BPF_F_TUNINFO_FLAGS: c_int = 16;
const enum_unnamed_46 = c_uint;
pub const BPF_F_INDEX_MASK: c_ulong = 4294967295;
pub const BPF_F_CURRENT_CPU: c_ulong = 4294967295;
pub const BPF_F_CTXLEN_MASK: c_ulong = 4503595332403200;
const enum_unnamed_47 = c_ulong;
pub const BPF_F_CURRENT_NETNS: c_int = -1;
const enum_unnamed_48 = c_int;
pub const BPF_CSUM_LEVEL_QUERY: c_int = 0;
pub const BPF_CSUM_LEVEL_INC: c_int = 1;
pub const BPF_CSUM_LEVEL_DEC: c_int = 2;
pub const BPF_CSUM_LEVEL_RESET: c_int = 3;
const enum_unnamed_49 = c_uint;
pub const BPF_F_ADJ_ROOM_FIXED_GSO: c_int = 1;
pub const BPF_F_ADJ_ROOM_ENCAP_L3_IPV4: c_int = 2;
pub const BPF_F_ADJ_ROOM_ENCAP_L3_IPV6: c_int = 4;
pub const BPF_F_ADJ_ROOM_ENCAP_L4_GRE: c_int = 8;
pub const BPF_F_ADJ_ROOM_ENCAP_L4_UDP: c_int = 16;
pub const BPF_F_ADJ_ROOM_NO_CSUM_RESET: c_int = 32;
pub const BPF_F_ADJ_ROOM_ENCAP_L2_ETH: c_int = 64;
pub const BPF_F_ADJ_ROOM_DECAP_L3_IPV4: c_int = 128;
pub const BPF_F_ADJ_ROOM_DECAP_L3_IPV6: c_int = 256;
const enum_unnamed_50 = c_uint;
pub const BPF_ADJ_ROOM_ENCAP_L2_MASK: c_int = 255;
pub const BPF_ADJ_ROOM_ENCAP_L2_SHIFT: c_int = 56;
const enum_unnamed_51 = c_uint;
pub const BPF_F_SYSCTL_BASE_NAME: c_int = 1;
const enum_unnamed_52 = c_uint;
pub const BPF_LOCAL_STORAGE_GET_F_CREATE: c_int = 1;
pub const BPF_SK_STORAGE_GET_F_CREATE: c_int = 1;
const enum_unnamed_53 = c_uint;
pub const BPF_F_GET_BRANCH_RECORDS_SIZE: c_int = 1;
const enum_unnamed_54 = c_uint;
pub const BPF_RB_NO_WAKEUP: c_int = 1;
pub const BPF_RB_FORCE_WAKEUP: c_int = 2;
const enum_unnamed_55 = c_uint;
pub const BPF_RB_AVAIL_DATA: c_int = 0;
pub const BPF_RB_RING_SIZE: c_int = 1;
pub const BPF_RB_CONS_POS: c_int = 2;
pub const BPF_RB_PROD_POS: c_int = 3;
const enum_unnamed_56 = c_uint;
pub const BPF_RINGBUF_BUSY_BIT: c_uint = 2147483648;
pub const BPF_RINGBUF_DISCARD_BIT: c_int = 1073741824;
pub const BPF_RINGBUF_HDR_SZ: c_int = 8;
const enum_unnamed_57 = c_uint;
pub const BPF_SK_LOOKUP_F_REPLACE: c_int = 1;
pub const BPF_SK_LOOKUP_F_NO_REUSEPORT: c_int = 2;
const enum_unnamed_58 = c_uint;
pub const BPF_ADJ_ROOM_NET: c_int = 0;
pub const BPF_ADJ_ROOM_MAC: c_int = 1;
pub const enum_bpf_adj_room_mode = c_uint;
pub const BPF_HDR_START_MAC: c_int = 0;
pub const BPF_HDR_START_NET: c_int = 1;
pub const enum_bpf_hdr_start_off = c_uint;
pub const BPF_LWT_ENCAP_SEG6: c_int = 0;
pub const BPF_LWT_ENCAP_SEG6_INLINE: c_int = 1;
pub const BPF_LWT_ENCAP_IP: c_int = 2;
pub const enum_bpf_lwt_encap_mode = c_uint;
pub const BPF_F_BPRM_SECUREEXEC: c_int = 1;
const enum_unnamed_59 = c_uint;
pub const BPF_F_BROADCAST: c_int = 8;
pub const BPF_F_EXCLUDE_INGRESS: c_int = 16;
const enum_unnamed_60 = c_uint;
pub const BPF_SKB_TSTAMP_UNSPEC: c_int = 0;
pub const BPF_SKB_TSTAMP_DELIVERY_MONO: c_int = 1;
const enum_unnamed_61 = c_uint;
const struct_unnamed_64 = extern struct {
    ipv4_src: __be32 = @import("std").mem.zeroes(__be32),
    ipv4_dst: __be32 = @import("std").mem.zeroes(__be32),
};
const struct_unnamed_65 = extern struct {
    ipv6_src: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    ipv6_dst: [4]__u32 = @import("std").mem.zeroes([4]__u32),
};
const union_unnamed_63 = extern union {
    unnamed_0: struct_unnamed_64,
    unnamed_1: struct_unnamed_65,
};
pub const struct_bpf_flow_keys = extern struct {
    nhoff: __u16 = @import("std").mem.zeroes(__u16),
    thoff: __u16 = @import("std").mem.zeroes(__u16),
    addr_proto: __u16 = @import("std").mem.zeroes(__u16),
    is_frag: __u8 = @import("std").mem.zeroes(__u8),
    is_first_frag: __u8 = @import("std").mem.zeroes(__u8),
    is_encap: __u8 = @import("std").mem.zeroes(__u8),
    ip_proto: __u8 = @import("std").mem.zeroes(__u8),
    n_proto: __be16 = @import("std").mem.zeroes(__be16),
    sport: __be16 = @import("std").mem.zeroes(__be16),
    dport: __be16 = @import("std").mem.zeroes(__be16),
    unnamed_0: union_unnamed_63 = @import("std").mem.zeroes(union_unnamed_63),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    flow_label: __be32 = @import("std").mem.zeroes(__be32),
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_62 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6050:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_sock = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_66 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5972:2: warning: struct demoted to opaque type - has bitfield
pub const struct___sk_buff = opaque {};
const union_unnamed_67 = extern union {
    remote_ipv4: __u32,
    remote_ipv6: [4]__u32,
};
const union_unnamed_68 = extern union {
    tunnel_ext: __u16,
    tunnel_flags: __be16,
};
const union_unnamed_69 = extern union {
    local_ipv4: __u32,
    local_ipv6: [4]__u32,
};
pub const struct_bpf_tunnel_key = extern struct {
    tunnel_id: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_67 = @import("std").mem.zeroes(union_unnamed_67),
    tunnel_tos: __u8 = @import("std").mem.zeroes(__u8),
    tunnel_ttl: __u8 = @import("std").mem.zeroes(__u8),
    unnamed_1: union_unnamed_68 = @import("std").mem.zeroes(union_unnamed_68),
    tunnel_label: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_2: union_unnamed_69 = @import("std").mem.zeroes(union_unnamed_69),
};
const union_unnamed_70 = extern union {
    remote_ipv4: __u32,
    remote_ipv6: [4]__u32,
};
pub const struct_bpf_xfrm_state = extern struct {
    reqid: __u32 = @import("std").mem.zeroes(__u32),
    spi: __u32 = @import("std").mem.zeroes(__u32),
    family: __u16 = @import("std").mem.zeroes(__u16),
    ext: __u16 = @import("std").mem.zeroes(__u16),
    unnamed_0: union_unnamed_70 = @import("std").mem.zeroes(union_unnamed_70),
};
pub const BPF_OK: c_int = 0;
pub const BPF_DROP: c_int = 2;
pub const BPF_REDIRECT: c_int = 7;
pub const BPF_LWT_REROUTE: c_int = 128;
pub const BPF_FLOW_DISSECTOR_CONTINUE: c_int = 129;
pub const enum_bpf_ret_code = c_uint;
pub const struct_bpf_tcp_sock = extern struct {
    snd_cwnd: __u32 = @import("std").mem.zeroes(__u32),
    srtt_us: __u32 = @import("std").mem.zeroes(__u32),
    rtt_min: __u32 = @import("std").mem.zeroes(__u32),
    snd_ssthresh: __u32 = @import("std").mem.zeroes(__u32),
    rcv_nxt: __u32 = @import("std").mem.zeroes(__u32),
    snd_nxt: __u32 = @import("std").mem.zeroes(__u32),
    snd_una: __u32 = @import("std").mem.zeroes(__u32),
    mss_cache: __u32 = @import("std").mem.zeroes(__u32),
    ecn_flags: __u32 = @import("std").mem.zeroes(__u32),
    rate_delivered: __u32 = @import("std").mem.zeroes(__u32),
    rate_interval_us: __u32 = @import("std").mem.zeroes(__u32),
    packets_out: __u32 = @import("std").mem.zeroes(__u32),
    retrans_out: __u32 = @import("std").mem.zeroes(__u32),
    total_retrans: __u32 = @import("std").mem.zeroes(__u32),
    segs_in: __u32 = @import("std").mem.zeroes(__u32),
    data_segs_in: __u32 = @import("std").mem.zeroes(__u32),
    segs_out: __u32 = @import("std").mem.zeroes(__u32),
    data_segs_out: __u32 = @import("std").mem.zeroes(__u32),
    lost_out: __u32 = @import("std").mem.zeroes(__u32),
    sacked_out: __u32 = @import("std").mem.zeroes(__u32),
    bytes_received: __u64 = @import("std").mem.zeroes(__u64),
    bytes_acked: __u64 = @import("std").mem.zeroes(__u64),
    dsack_dups: __u32 = @import("std").mem.zeroes(__u32),
    delivered: __u32 = @import("std").mem.zeroes(__u32),
    delivered_ce: __u32 = @import("std").mem.zeroes(__u32),
    icsk_retransmits: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_72 = extern struct {
    saddr: __be32 = @import("std").mem.zeroes(__be32),
    daddr: __be32 = @import("std").mem.zeroes(__be32),
    sport: __be16 = @import("std").mem.zeroes(__be16),
    dport: __be16 = @import("std").mem.zeroes(__be16),
};
const struct_unnamed_73 = extern struct {
    saddr: [4]__be32 = @import("std").mem.zeroes([4]__be32),
    daddr: [4]__be32 = @import("std").mem.zeroes([4]__be32),
    sport: __be16 = @import("std").mem.zeroes(__be16),
    dport: __be16 = @import("std").mem.zeroes(__be16),
};
const union_unnamed_71 = extern union {
    ipv4: struct_unnamed_72,
    ipv6: struct_unnamed_73,
};
pub const struct_bpf_sock_tuple = extern struct {
    unnamed_0: union_unnamed_71 = @import("std").mem.zeroes(union_unnamed_71),
};
pub const struct_bpf_xdp_sock = extern struct {
    queue_id: __u32 = @import("std").mem.zeroes(__u32),
};
pub const XDP_ABORTED: c_int = 0;
pub const XDP_DROP: c_int = 1;
pub const XDP_PASS: c_int = 2;
pub const XDP_TX: c_int = 3;
pub const XDP_REDIRECT: c_int = 4;
pub const enum_xdp_action = c_uint;
pub const struct_xdp_md = extern struct {
    data: __u32 = @import("std").mem.zeroes(__u32),
    data_end: __u32 = @import("std").mem.zeroes(__u32),
    data_meta: __u32 = @import("std").mem.zeroes(__u32),
    ingress_ifindex: __u32 = @import("std").mem.zeroes(__u32),
    rx_queue_index: __u32 = @import("std").mem.zeroes(__u32),
    egress_ifindex: __u32 = @import("std").mem.zeroes(__u32),
};
const union_unnamed_74 = extern union {
    fd: c_int,
    id: __u32,
};
pub const struct_bpf_devmap_val = extern struct {
    ifindex: __u32 = @import("std").mem.zeroes(__u32),
    bpf_prog: union_unnamed_74 = @import("std").mem.zeroes(union_unnamed_74),
};
const union_unnamed_75 = extern union {
    fd: c_int,
    id: __u32,
};
pub const struct_bpf_cpumap_val = extern struct {
    qsize: __u32 = @import("std").mem.zeroes(__u32),
    bpf_prog: union_unnamed_75 = @import("std").mem.zeroes(union_unnamed_75),
};
pub const SK_DROP: c_int = 0;
pub const SK_PASS: c_int = 1;
pub const enum_sk_action = c_uint;
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_76 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_77 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_78 = opaque {};
pub const struct_sk_msg_md = extern struct {
    unnamed_0: union_unnamed_76 = @import("std").mem.zeroes(union_unnamed_76),
    unnamed_1: union_unnamed_77 = @import("std").mem.zeroes(union_unnamed_77),
    family: __u32 = @import("std").mem.zeroes(__u32),
    remote_ip4: __u32 = @import("std").mem.zeroes(__u32),
    local_ip4: __u32 = @import("std").mem.zeroes(__u32),
    remote_ip6: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    local_ip6: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    remote_port: __u32 = @import("std").mem.zeroes(__u32),
    local_port: __u32 = @import("std").mem.zeroes(__u32),
    size: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_2: union_unnamed_78 = @import("std").mem.zeroes(union_unnamed_78),
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_79 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_80 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_81 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_82 = opaque {};
pub const struct_sk_reuseport_md = extern struct {
    unnamed_0: union_unnamed_79 = @import("std").mem.zeroes(union_unnamed_79),
    unnamed_1: union_unnamed_80 = @import("std").mem.zeroes(union_unnamed_80),
    len: __u32 = @import("std").mem.zeroes(__u32),
    eth_protocol: __u32 = @import("std").mem.zeroes(__u32),
    ip_protocol: __u32 = @import("std").mem.zeroes(__u32),
    bind_inany: __u32 = @import("std").mem.zeroes(__u32),
    hash: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_2: union_unnamed_81 = @import("std").mem.zeroes(union_unnamed_81),
    unnamed_3: union_unnamed_82 = @import("std").mem.zeroes(union_unnamed_82),
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6257:8: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_prog_info = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6300:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_map_info = opaque {};
pub const struct_bpf_btf_info = extern struct {
    btf: __u64 align(8) = @import("std").mem.zeroes(__u64),
    btf_size: __u32 = @import("std").mem.zeroes(__u32),
    id: __u32 = @import("std").mem.zeroes(__u32),
    name: __u64 align(8) = @import("std").mem.zeroes(__u64),
    name_len: __u32 = @import("std").mem.zeroes(__u32),
    kernel_btf: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_84 = extern struct {
    tp_name: __u64 align(8) = @import("std").mem.zeroes(__u64),
    tp_name_len: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_85 = extern struct {
    attach_type: __u32 = @import("std").mem.zeroes(__u32),
    target_obj_id: __u32 = @import("std").mem.zeroes(__u32),
    target_btf_id: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_86 = extern struct {
    cgroup_id: __u64 = @import("std").mem.zeroes(__u64),
    attach_type: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_89 = extern struct {
    map_id: __u32 = @import("std").mem.zeroes(__u32),
};
const union_unnamed_88 = extern union {
    map: struct_unnamed_89,
};
const struct_unnamed_91 = extern struct {
    cgroup_id: __u64 = @import("std").mem.zeroes(__u64),
    order: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_92 = extern struct {
    tid: __u32 = @import("std").mem.zeroes(__u32),
    pid: __u32 = @import("std").mem.zeroes(__u32),
};
const union_unnamed_90 = extern union {
    cgroup: struct_unnamed_91,
    task: struct_unnamed_92,
};
const struct_unnamed_87 = extern struct {
    target_name: __u64 align(8) = @import("std").mem.zeroes(__u64),
    target_name_len: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_88 = @import("std").mem.zeroes(union_unnamed_88),
    unnamed_1: union_unnamed_90 = @import("std").mem.zeroes(union_unnamed_90),
};
const struct_unnamed_93 = extern struct {
    netns_ino: __u32 = @import("std").mem.zeroes(__u32),
    attach_type: __u32 = @import("std").mem.zeroes(__u32),
};
const struct_unnamed_94 = extern struct {
    ifindex: __u32 = @import("std").mem.zeroes(__u32),
};
const union_unnamed_83 = extern union {
    raw_tracepoint: struct_unnamed_84,
    tracing: struct_unnamed_85,
    cgroup: struct_unnamed_86,
    iter: struct_unnamed_87,
    netns: struct_unnamed_93,
    xdp: struct_unnamed_94,
};
pub const struct_bpf_link_info = extern struct {
    type: __u32 = @import("std").mem.zeroes(__u32),
    id: __u32 = @import("std").mem.zeroes(__u32),
    prog_id: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_83 = @import("std").mem.zeroes(union_unnamed_83),
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_95 = opaque {};
pub const struct_bpf_sock_addr = extern struct {
    user_family: __u32 = @import("std").mem.zeroes(__u32),
    user_ip4: __u32 = @import("std").mem.zeroes(__u32),
    user_ip6: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    user_port: __u32 = @import("std").mem.zeroes(__u32),
    family: __u32 = @import("std").mem.zeroes(__u32),
    type: __u32 = @import("std").mem.zeroes(__u32),
    protocol: __u32 = @import("std").mem.zeroes(__u32),
    msg_src_ip4: __u32 = @import("std").mem.zeroes(__u32),
    msg_src_ip6: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    unnamed_0: union_unnamed_95 = @import("std").mem.zeroes(union_unnamed_95),
};
const union_unnamed_96 = extern union {
    args: [4]__u32,
    reply: __u32,
    replylong: [4]__u32,
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_97 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_98 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_99 = opaque {};
pub const struct_bpf_sock_ops = extern struct {
    op: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_96 = @import("std").mem.zeroes(union_unnamed_96),
    family: __u32 = @import("std").mem.zeroes(__u32),
    remote_ip4: __u32 = @import("std").mem.zeroes(__u32),
    local_ip4: __u32 = @import("std").mem.zeroes(__u32),
    remote_ip6: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    local_ip6: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    remote_port: __u32 = @import("std").mem.zeroes(__u32),
    local_port: __u32 = @import("std").mem.zeroes(__u32),
    is_fullsock: __u32 = @import("std").mem.zeroes(__u32),
    snd_cwnd: __u32 = @import("std").mem.zeroes(__u32),
    srtt_us: __u32 = @import("std").mem.zeroes(__u32),
    bpf_sock_ops_cb_flags: __u32 = @import("std").mem.zeroes(__u32),
    state: __u32 = @import("std").mem.zeroes(__u32),
    rtt_min: __u32 = @import("std").mem.zeroes(__u32),
    snd_ssthresh: __u32 = @import("std").mem.zeroes(__u32),
    rcv_nxt: __u32 = @import("std").mem.zeroes(__u32),
    snd_nxt: __u32 = @import("std").mem.zeroes(__u32),
    snd_una: __u32 = @import("std").mem.zeroes(__u32),
    mss_cache: __u32 = @import("std").mem.zeroes(__u32),
    ecn_flags: __u32 = @import("std").mem.zeroes(__u32),
    rate_delivered: __u32 = @import("std").mem.zeroes(__u32),
    rate_interval_us: __u32 = @import("std").mem.zeroes(__u32),
    packets_out: __u32 = @import("std").mem.zeroes(__u32),
    retrans_out: __u32 = @import("std").mem.zeroes(__u32),
    total_retrans: __u32 = @import("std").mem.zeroes(__u32),
    segs_in: __u32 = @import("std").mem.zeroes(__u32),
    data_segs_in: __u32 = @import("std").mem.zeroes(__u32),
    segs_out: __u32 = @import("std").mem.zeroes(__u32),
    data_segs_out: __u32 = @import("std").mem.zeroes(__u32),
    lost_out: __u32 = @import("std").mem.zeroes(__u32),
    sacked_out: __u32 = @import("std").mem.zeroes(__u32),
    sk_txhash: __u32 = @import("std").mem.zeroes(__u32),
    bytes_received: __u64 = @import("std").mem.zeroes(__u64),
    bytes_acked: __u64 = @import("std").mem.zeroes(__u64),
    unnamed_1: union_unnamed_97 = @import("std").mem.zeroes(union_unnamed_97),
    unnamed_2: union_unnamed_98 = @import("std").mem.zeroes(union_unnamed_98),
    unnamed_3: union_unnamed_99 = @import("std").mem.zeroes(union_unnamed_99),
    skb_len: __u32 = @import("std").mem.zeroes(__u32),
    skb_tcp_flags: __u32 = @import("std").mem.zeroes(__u32),
    skb_hwtstamp: __u64 = @import("std").mem.zeroes(__u64),
};
pub const BPF_SOCK_OPS_RTO_CB_FLAG: c_int = 1;
pub const BPF_SOCK_OPS_RETRANS_CB_FLAG: c_int = 2;
pub const BPF_SOCK_OPS_STATE_CB_FLAG: c_int = 4;
pub const BPF_SOCK_OPS_RTT_CB_FLAG: c_int = 8;
pub const BPF_SOCK_OPS_PARSE_ALL_HDR_OPT_CB_FLAG: c_int = 16;
pub const BPF_SOCK_OPS_PARSE_UNKNOWN_HDR_OPT_CB_FLAG: c_int = 32;
pub const BPF_SOCK_OPS_WRITE_HDR_OPT_CB_FLAG: c_int = 64;
pub const BPF_SOCK_OPS_ALL_CB_FLAGS: c_int = 127;
const enum_unnamed_100 = c_uint;
pub const BPF_SOCK_OPS_VOID: c_int = 0;
pub const BPF_SOCK_OPS_TIMEOUT_INIT: c_int = 1;
pub const BPF_SOCK_OPS_RWND_INIT: c_int = 2;
pub const BPF_SOCK_OPS_TCP_CONNECT_CB: c_int = 3;
pub const BPF_SOCK_OPS_ACTIVE_ESTABLISHED_CB: c_int = 4;
pub const BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB: c_int = 5;
pub const BPF_SOCK_OPS_NEEDS_ECN: c_int = 6;
pub const BPF_SOCK_OPS_BASE_RTT: c_int = 7;
pub const BPF_SOCK_OPS_RTO_CB: c_int = 8;
pub const BPF_SOCK_OPS_RETRANS_CB: c_int = 9;
pub const BPF_SOCK_OPS_STATE_CB: c_int = 10;
pub const BPF_SOCK_OPS_TCP_LISTEN_CB: c_int = 11;
pub const BPF_SOCK_OPS_RTT_CB: c_int = 12;
pub const BPF_SOCK_OPS_PARSE_HDR_OPT_CB: c_int = 13;
pub const BPF_SOCK_OPS_HDR_OPT_LEN_CB: c_int = 14;
pub const BPF_SOCK_OPS_WRITE_HDR_OPT_CB: c_int = 15;
const enum_unnamed_101 = c_uint;
pub const BPF_TCP_ESTABLISHED: c_int = 1;
pub const BPF_TCP_SYN_SENT: c_int = 2;
pub const BPF_TCP_SYN_RECV: c_int = 3;
pub const BPF_TCP_FIN_WAIT1: c_int = 4;
pub const BPF_TCP_FIN_WAIT2: c_int = 5;
pub const BPF_TCP_TIME_WAIT: c_int = 6;
pub const BPF_TCP_CLOSE: c_int = 7;
pub const BPF_TCP_CLOSE_WAIT: c_int = 8;
pub const BPF_TCP_LAST_ACK: c_int = 9;
pub const BPF_TCP_LISTEN: c_int = 10;
pub const BPF_TCP_CLOSING: c_int = 11;
pub const BPF_TCP_NEW_SYN_RECV: c_int = 12;
pub const BPF_TCP_MAX_STATES: c_int = 13;
const enum_unnamed_102 = c_uint;
pub const TCP_BPF_IW: c_int = 1001;
pub const TCP_BPF_SNDCWND_CLAMP: c_int = 1002;
pub const TCP_BPF_DELACK_MAX: c_int = 1003;
pub const TCP_BPF_RTO_MIN: c_int = 1004;
pub const TCP_BPF_SYN: c_int = 1005;
pub const TCP_BPF_SYN_IP: c_int = 1006;
pub const TCP_BPF_SYN_MAC: c_int = 1007;
const enum_unnamed_103 = c_uint;
pub const BPF_LOAD_HDR_OPT_TCP_SYN: c_int = 1;
const enum_unnamed_104 = c_uint;
pub const BPF_WRITE_HDR_TCP_CURRENT_MSS: c_int = 1;
pub const BPF_WRITE_HDR_TCP_SYNACK_COOKIE: c_int = 2;
const enum_unnamed_105 = c_uint;
pub const struct_bpf_perf_event_value = extern struct {
    counter: __u64 = @import("std").mem.zeroes(__u64),
    enabled: __u64 = @import("std").mem.zeroes(__u64),
    running: __u64 = @import("std").mem.zeroes(__u64),
};
pub const BPF_DEVCG_ACC_MKNOD: c_int = 1;
pub const BPF_DEVCG_ACC_READ: c_int = 2;
pub const BPF_DEVCG_ACC_WRITE: c_int = 4;
const enum_unnamed_106 = c_uint;
pub const BPF_DEVCG_DEV_BLOCK: c_int = 1;
pub const BPF_DEVCG_DEV_CHAR: c_int = 2;
const enum_unnamed_107 = c_uint;
pub const struct_bpf_cgroup_dev_ctx = extern struct {
    access_type: __u32 = @import("std").mem.zeroes(__u32),
    major: __u32 = @import("std").mem.zeroes(__u32),
    minor: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_bpf_raw_tracepoint_args = extern struct {
    pub fn args(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), c_ulonglong) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), c_ulonglong);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 0)));
    }
};
pub const BPF_FIB_LOOKUP_DIRECT: c_int = 1;
pub const BPF_FIB_LOOKUP_OUTPUT: c_int = 2;
pub const BPF_FIB_LOOKUP_SKIP_NEIGH: c_int = 4;
const enum_unnamed_108 = c_uint;
pub const BPF_FIB_LKUP_RET_SUCCESS: c_int = 0;
pub const BPF_FIB_LKUP_RET_BLACKHOLE: c_int = 1;
pub const BPF_FIB_LKUP_RET_UNREACHABLE: c_int = 2;
pub const BPF_FIB_LKUP_RET_PROHIBIT: c_int = 3;
pub const BPF_FIB_LKUP_RET_NOT_FWDED: c_int = 4;
pub const BPF_FIB_LKUP_RET_FWD_DISABLED: c_int = 5;
pub const BPF_FIB_LKUP_RET_UNSUPP_LWT: c_int = 6;
pub const BPF_FIB_LKUP_RET_NO_NEIGH: c_int = 7;
pub const BPF_FIB_LKUP_RET_FRAG_NEEDED: c_int = 8;
const enum_unnamed_109 = c_uint;
const union_unnamed_110 = extern union {
    tot_len: __u16,
    mtu_result: __u16,
};
const union_unnamed_111 = extern union {
    tos: __u8,
    flowinfo: __be32,
    rt_metric: __u32,
};
const union_unnamed_112 = extern union {
    ipv4_src: __be32,
    ipv6_src: [4]__u32,
};
const union_unnamed_113 = extern union {
    ipv4_dst: __be32,
    ipv6_dst: [4]__u32,
};
pub const struct_bpf_fib_lookup = extern struct {
    family: __u8 = @import("std").mem.zeroes(__u8),
    l4_protocol: __u8 = @import("std").mem.zeroes(__u8),
    sport: __be16 = @import("std").mem.zeroes(__be16),
    dport: __be16 = @import("std").mem.zeroes(__be16),
    unnamed_0: union_unnamed_110 = @import("std").mem.zeroes(union_unnamed_110),
    ifindex: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_1: union_unnamed_111 = @import("std").mem.zeroes(union_unnamed_111),
    unnamed_2: union_unnamed_112 = @import("std").mem.zeroes(union_unnamed_112),
    unnamed_3: union_unnamed_113 = @import("std").mem.zeroes(union_unnamed_113),
    h_vlan_proto: __be16 = @import("std").mem.zeroes(__be16),
    h_vlan_TCI: __be16 = @import("std").mem.zeroes(__be16),
    smac: [6]__u8 = @import("std").mem.zeroes([6]__u8),
    dmac: [6]__u8 = @import("std").mem.zeroes([6]__u8),
};
const union_unnamed_114 = extern union {
    ipv4_nh: __be32,
    ipv6_nh: [4]__u32,
};
pub const struct_bpf_redir_neigh = extern struct {
    nh_family: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_114 = @import("std").mem.zeroes(union_unnamed_114),
};
pub const BPF_MTU_CHK_SEGS: c_int = 1;
pub const enum_bpf_check_mtu_flags = c_uint;
pub const BPF_MTU_CHK_RET_SUCCESS: c_int = 0;
pub const BPF_MTU_CHK_RET_FRAG_NEEDED: c_int = 1;
pub const BPF_MTU_CHK_RET_SEGS_TOOBIG: c_int = 2;
pub const enum_bpf_check_mtu_ret = c_uint;
pub const BPF_FD_TYPE_RAW_TRACEPOINT: c_int = 0;
pub const BPF_FD_TYPE_TRACEPOINT: c_int = 1;
pub const BPF_FD_TYPE_KPROBE: c_int = 2;
pub const BPF_FD_TYPE_KRETPROBE: c_int = 3;
pub const BPF_FD_TYPE_UPROBE: c_int = 4;
pub const BPF_FD_TYPE_URETPROBE: c_int = 5;
pub const enum_bpf_task_fd_type = c_uint;
pub const BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG: c_int = 1;
pub const BPF_FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL: c_int = 2;
pub const BPF_FLOW_DISSECTOR_F_STOP_AT_ENCAP: c_int = 4;
const enum_unnamed_115 = c_uint;
pub const struct_bpf_func_info = extern struct {
    insn_off: __u32 = @import("std").mem.zeroes(__u32),
    type_id: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_bpf_line_info = extern struct {
    insn_off: __u32 = @import("std").mem.zeroes(__u32),
    file_name_off: __u32 = @import("std").mem.zeroes(__u32),
    line_off: __u32 = @import("std").mem.zeroes(__u32),
    line_col: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_bpf_spin_lock = extern struct {
    val: __u32 = @import("std").mem.zeroes(__u32),
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6907:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_timer = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6912:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_dynptr = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6917:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_list_head = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6922:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_list_node = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6927:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_rb_root = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6932:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_rb_node = opaque {};
pub const struct_bpf_sysctl = extern struct {
    write: __u32 = @import("std").mem.zeroes(__u32),
    file_pos: __u32 = @import("std").mem.zeroes(__u32),
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_116 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_117 = opaque {};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_118 = opaque {};
pub const struct_bpf_sockopt = extern struct {
    unnamed_0: union_unnamed_116 = @import("std").mem.zeroes(union_unnamed_116),
    unnamed_1: union_unnamed_117 = @import("std").mem.zeroes(union_unnamed_117),
    unnamed_2: union_unnamed_118 = @import("std").mem.zeroes(union_unnamed_118),
    level: __s32 = @import("std").mem.zeroes(__s32),
    optname: __s32 = @import("std").mem.zeroes(__s32),
    optlen: __s32 = @import("std").mem.zeroes(__s32),
    retval: __s32 = @import("std").mem.zeroes(__s32),
};
pub const struct_bpf_pidns_info = extern struct {
    pid: __u32 = @import("std").mem.zeroes(__u32),
    tgid: __u32 = @import("std").mem.zeroes(__u32),
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5919:2: warning: union demoted to opaque type - has bitfield
const union_unnamed_120 = opaque {};
const union_unnamed_119 = extern union {
    unnamed_0: union_unnamed_120,
    cookie: __u64,
};
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:6974:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_sk_lookup = opaque {};
pub const struct_btf_ptr = extern struct {
    ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    type_id: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub const BTF_F_COMPACT: c_int = 1;
pub const BTF_F_NONAME: c_int = 2;
pub const BTF_F_PTR_RAW: c_int = 4;
pub const BTF_F_ZERO: c_int = 8;
const enum_unnamed_121 = c_uint;
pub const BPF_CORE_FIELD_BYTE_OFFSET: c_int = 0;
pub const BPF_CORE_FIELD_BYTE_SIZE: c_int = 1;
pub const BPF_CORE_FIELD_EXISTS: c_int = 2;
pub const BPF_CORE_FIELD_SIGNED: c_int = 3;
pub const BPF_CORE_FIELD_LSHIFT_U64: c_int = 4;
pub const BPF_CORE_FIELD_RSHIFT_U64: c_int = 5;
pub const BPF_CORE_TYPE_ID_LOCAL: c_int = 6;
pub const BPF_CORE_TYPE_ID_TARGET: c_int = 7;
pub const BPF_CORE_TYPE_EXISTS: c_int = 8;
pub const BPF_CORE_TYPE_SIZE: c_int = 9;
pub const BPF_CORE_ENUMVAL_EXISTS: c_int = 10;
pub const BPF_CORE_ENUMVAL_VALUE: c_int = 11;
pub const BPF_CORE_TYPE_MATCHES: c_int = 12;
pub const enum_bpf_core_relo_kind = c_uint;
pub const struct_bpf_core_relo = extern struct {
    insn_off: __u32 = @import("std").mem.zeroes(__u32),
    type_id: __u32 = @import("std").mem.zeroes(__u32),
    access_str_off: __u32 = @import("std").mem.zeroes(__u32),
    kind: enum_bpf_core_relo_kind = @import("std").mem.zeroes(enum_bpf_core_relo_kind),
};
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data_122 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_122 = @import("std").mem.zeroes([13]?*struct___locale_data_122),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
pub extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strlcpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strlcat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub const LIBBPF_STRICT_ALL: c_uint = 4294967295;
pub const LIBBPF_STRICT_NONE: c_int = 0;
pub const LIBBPF_STRICT_CLEAN_PTRS: c_int = 1;
pub const LIBBPF_STRICT_DIRECT_ERRS: c_int = 2;
pub const LIBBPF_STRICT_SEC_NAME: c_int = 4;
pub const LIBBPF_STRICT_NO_OBJECT_LIST: c_int = 8;
pub const LIBBPF_STRICT_AUTO_RLIMIT_MEMLOCK: c_int = 16;
pub const LIBBPF_STRICT_MAP_DEFINITIONS: c_int = 32;
pub const __LIBBPF_STRICT_LAST: c_int = 33;
pub const enum_libbpf_strict_mode = c_uint;
pub extern fn libbpf_set_strict_mode(mode: enum_libbpf_strict_mode) c_int;
pub extern fn libbpf_get_error(ptr: ?*const anyopaque) c_long;
pub const struct_bpf_program = opaque {};
pub const struct_bpf_map = opaque {};
pub const struct_btf = opaque {};
pub const struct_btf_ext = opaque {};
pub extern fn libbpf_find_kernel_btf() ?*struct_btf;
pub extern fn bpf_program__get_type(prog: ?*const struct_bpf_program) enum_bpf_prog_type;
pub extern fn bpf_program__get_expected_attach_type(prog: ?*const struct_bpf_program) enum_bpf_attach_type;
pub extern fn bpf_map__get_pin_path(map: ?*const struct_bpf_map) [*c]const u8;
pub extern fn btf__get_raw_data(btf: ?*const struct_btf, size: [*c]__u32) ?*const anyopaque;
pub extern fn btf_ext__get_raw_data(btf_ext: ?*const struct_btf_ext, size: [*c]__u32) ?*const anyopaque;
pub extern fn libbpf_major_version() __u32;
pub extern fn libbpf_minor_version() __u32;
pub extern fn libbpf_version_string() [*c]const u8;
pub const __LIBBPF_ERRNO__START: c_int = 4000;
pub const LIBBPF_ERRNO__LIBELF: c_int = 4000;
pub const LIBBPF_ERRNO__FORMAT: c_int = 4001;
pub const LIBBPF_ERRNO__KVERSION: c_int = 4002;
pub const LIBBPF_ERRNO__ENDIAN: c_int = 4003;
pub const LIBBPF_ERRNO__INTERNAL: c_int = 4004;
pub const LIBBPF_ERRNO__RELOC: c_int = 4005;
pub const LIBBPF_ERRNO__LOAD: c_int = 4006;
pub const LIBBPF_ERRNO__VERIFY: c_int = 4007;
pub const LIBBPF_ERRNO__PROG2BIG: c_int = 4008;
pub const LIBBPF_ERRNO__KVER: c_int = 4009;
pub const LIBBPF_ERRNO__PROGTYPE: c_int = 4010;
pub const LIBBPF_ERRNO__WRNGPID: c_int = 4011;
pub const LIBBPF_ERRNO__INVSEQ: c_int = 4012;
pub const LIBBPF_ERRNO__NLPARSE: c_int = 4013;
pub const __LIBBPF_ERRNO__END: c_int = 4014;
pub const enum_libbpf_errno = c_uint;
pub extern fn libbpf_strerror(err: c_int, buf: [*c]u8, size: usize) c_int;
pub extern fn libbpf_bpf_attach_type_str(t: enum_bpf_attach_type) [*c]const u8;
pub extern fn libbpf_bpf_link_type_str(t: enum_bpf_link_type) [*c]const u8;
pub extern fn libbpf_bpf_map_type_str(t: enum_bpf_map_type) [*c]const u8;
pub extern fn libbpf_bpf_prog_type_str(t: enum_bpf_prog_type) [*c]const u8;
pub const LIBBPF_WARN: c_int = 0;
pub const LIBBPF_INFO: c_int = 1;
pub const LIBBPF_DEBUG: c_int = 2;
pub const enum_libbpf_print_level = c_uint;
pub const libbpf_print_fn_t = ?*const fn (enum_libbpf_print_level, [*c]const u8, [*c]struct___va_list_tag_1) callconv(.C) c_int;
pub extern fn libbpf_set_print(@"fn": libbpf_print_fn_t) libbpf_print_fn_t;
pub const struct_bpf_object = opaque {};
// /usr/include/bpf/libbpf.h:130:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_object_open_opts = opaque {};
pub extern fn bpf_object__open(path: [*c]const u8) ?*struct_bpf_object;
pub extern fn bpf_object__open_file(path: [*c]const u8, opts: ?*const struct_bpf_object_open_opts) ?*struct_bpf_object;
pub extern fn bpf_object__open_mem(obj_buf: ?*const anyopaque, obj_buf_sz: usize, opts: ?*const struct_bpf_object_open_opts) ?*struct_bpf_object;
pub extern fn bpf_object__load(obj: ?*struct_bpf_object) c_int;
pub extern fn bpf_object__close(obj: ?*struct_bpf_object) void;
pub extern fn bpf_object__pin_maps(obj: ?*struct_bpf_object, path: [*c]const u8) c_int;
pub extern fn bpf_object__unpin_maps(obj: ?*struct_bpf_object, path: [*c]const u8) c_int;
pub extern fn bpf_object__pin_programs(obj: ?*struct_bpf_object, path: [*c]const u8) c_int;
pub extern fn bpf_object__unpin_programs(obj: ?*struct_bpf_object, path: [*c]const u8) c_int;
pub extern fn bpf_object__pin(object: ?*struct_bpf_object, path: [*c]const u8) c_int;
pub extern fn bpf_object__unpin(object: ?*struct_bpf_object, path: [*c]const u8) c_int;
pub extern fn bpf_object__name(obj: ?*const struct_bpf_object) [*c]const u8;
pub extern fn bpf_object__kversion(obj: ?*const struct_bpf_object) c_uint;
pub extern fn bpf_object__set_kversion(obj: ?*struct_bpf_object, kern_version: __u32) c_int;
pub extern fn bpf_object__btf(obj: ?*const struct_bpf_object) ?*struct_btf;
pub extern fn bpf_object__btf_fd(obj: ?*const struct_bpf_object) c_int;
pub extern fn bpf_object__find_program_by_name(obj: ?*const struct_bpf_object, name: [*c]const u8) ?*struct_bpf_program;
pub extern fn libbpf_prog_type_by_name(name: [*c]const u8, prog_type: [*c]enum_bpf_prog_type, expected_attach_type: [*c]enum_bpf_attach_type) c_int;
pub extern fn libbpf_attach_type_by_name(name: [*c]const u8, attach_type: [*c]enum_bpf_attach_type) c_int;
pub extern fn libbpf_find_vmlinux_btf_id(name: [*c]const u8, attach_type: enum_bpf_attach_type) c_int;
pub extern fn bpf_object__next_program(obj: ?*const struct_bpf_object, prog: ?*struct_bpf_program) ?*struct_bpf_program;
pub extern fn bpf_object__prev_program(obj: ?*const struct_bpf_object, prog: ?*struct_bpf_program) ?*struct_bpf_program;
pub extern fn bpf_program__set_ifindex(prog: ?*struct_bpf_program, ifindex: __u32) void;
pub extern fn bpf_program__name(prog: ?*const struct_bpf_program) [*c]const u8;
pub extern fn bpf_program__section_name(prog: ?*const struct_bpf_program) [*c]const u8;
pub extern fn bpf_program__autoload(prog: ?*const struct_bpf_program) bool;
pub extern fn bpf_program__set_autoload(prog: ?*struct_bpf_program, autoload: bool) c_int;
pub extern fn bpf_program__autoattach(prog: ?*const struct_bpf_program) bool;
pub extern fn bpf_program__set_autoattach(prog: ?*struct_bpf_program, autoattach: bool) void;
pub extern fn bpf_program__insns(prog: ?*const struct_bpf_program) ?*const struct_bpf_insn;
pub extern fn bpf_program__set_insns(prog: ?*struct_bpf_program, new_insns: ?*struct_bpf_insn, new_insn_cnt: usize) c_int;
pub extern fn bpf_program__insn_cnt(prog: ?*const struct_bpf_program) usize;
pub extern fn bpf_program__fd(prog: ?*const struct_bpf_program) c_int;
pub extern fn bpf_program__pin(prog: ?*struct_bpf_program, path: [*c]const u8) c_int;
pub extern fn bpf_program__unpin(prog: ?*struct_bpf_program, path: [*c]const u8) c_int;
pub extern fn bpf_program__unload(prog: ?*struct_bpf_program) void;
pub const struct_bpf_link = opaque {};
pub extern fn bpf_link__open(path: [*c]const u8) ?*struct_bpf_link;
pub extern fn bpf_link__fd(link: ?*const struct_bpf_link) c_int;
pub extern fn bpf_link__pin_path(link: ?*const struct_bpf_link) [*c]const u8;
pub extern fn bpf_link__pin(link: ?*struct_bpf_link, path: [*c]const u8) c_int;
pub extern fn bpf_link__unpin(link: ?*struct_bpf_link) c_int;
pub extern fn bpf_link__update_program(link: ?*struct_bpf_link, prog: ?*struct_bpf_program) c_int;
pub extern fn bpf_link__disconnect(link: ?*struct_bpf_link) void;
pub extern fn bpf_link__detach(link: ?*struct_bpf_link) c_int;
pub extern fn bpf_link__destroy(link: ?*struct_bpf_link) c_int;
pub extern fn bpf_program__attach(prog: ?*const struct_bpf_program) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:459:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_perf_event_opts = opaque {};
pub extern fn bpf_program__attach_perf_event(prog: ?*const struct_bpf_program, pfd: c_int) ?*struct_bpf_link;
pub extern fn bpf_program__attach_perf_event_opts(prog: ?*const struct_bpf_program, pfd: c_int, opts: ?*const struct_bpf_perf_event_opts) ?*struct_bpf_link;
pub const PROBE_ATTACH_MODE_DEFAULT: c_int = 0;
pub const PROBE_ATTACH_MODE_LEGACY: c_int = 1;
pub const PROBE_ATTACH_MODE_PERF: c_int = 2;
pub const PROBE_ATTACH_MODE_LINK: c_int = 3;
pub const enum_probe_attach_mode = c_uint;
// /usr/include/bpf/libbpf.h:498:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_kprobe_opts = opaque {};
pub extern fn bpf_program__attach_kprobe(prog: ?*const struct_bpf_program, retprobe: bool, func_name: [*c]const u8) ?*struct_bpf_link;
pub extern fn bpf_program__attach_kprobe_opts(prog: ?*const struct_bpf_program, func_name: [*c]const u8, opts: ?*const struct_bpf_kprobe_opts) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:523:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_kprobe_multi_opts = opaque {};
pub extern fn bpf_program__attach_kprobe_multi_opts(prog: ?*const struct_bpf_program, pattern: [*c]const u8, opts: ?*const struct_bpf_kprobe_multi_opts) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:548:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_uprobe_multi_opts = opaque {};
pub extern fn bpf_program__attach_uprobe_multi(prog: ?*const struct_bpf_program, pid: pid_t, binary_path: [*c]const u8, func_pattern: [*c]const u8, opts: ?*const struct_bpf_uprobe_multi_opts) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:591:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_ksyscall_opts = opaque {};
pub extern fn bpf_program__attach_ksyscall(prog: ?*const struct_bpf_program, syscall_name: [*c]const u8, opts: ?*const struct_bpf_ksyscall_opts) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:651:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_uprobe_opts = opaque {};
pub extern fn bpf_program__attach_uprobe(prog: ?*const struct_bpf_program, retprobe: bool, pid: pid_t, binary_path: [*c]const u8, func_offset: usize) ?*struct_bpf_link;
pub extern fn bpf_program__attach_uprobe_opts(prog: ?*const struct_bpf_program, pid: pid_t, binary_path: [*c]const u8, func_offset: usize, opts: ?*const struct_bpf_uprobe_opts) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:700:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_usdt_opts = opaque {};
pub extern fn bpf_program__attach_usdt(prog: ?*const struct_bpf_program, pid: pid_t, binary_path: [*c]const u8, usdt_provider: [*c]const u8, usdt_name: [*c]const u8, opts: ?*const struct_bpf_usdt_opts) ?*struct_bpf_link;
pub const struct_bpf_tracepoint_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    bpf_cookie: __u64 = @import("std").mem.zeroes(__u64),
};
pub extern fn bpf_program__attach_tracepoint(prog: ?*const struct_bpf_program, tp_category: [*c]const u8, tp_name: [*c]const u8) ?*struct_bpf_link;
pub extern fn bpf_program__attach_tracepoint_opts(prog: ?*const struct_bpf_program, tp_category: [*c]const u8, tp_name: [*c]const u8, opts: [*c]const struct_bpf_tracepoint_opts) ?*struct_bpf_link;
pub extern fn bpf_program__attach_raw_tracepoint(prog: ?*const struct_bpf_program, tp_name: [*c]const u8) ?*struct_bpf_link;
pub const struct_bpf_trace_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    cookie: __u64 = @import("std").mem.zeroes(__u64),
};
pub extern fn bpf_program__attach_trace(prog: ?*const struct_bpf_program) ?*struct_bpf_link;
pub extern fn bpf_program__attach_trace_opts(prog: ?*const struct_bpf_program, opts: [*c]const struct_bpf_trace_opts) ?*struct_bpf_link;
pub extern fn bpf_program__attach_lsm(prog: ?*const struct_bpf_program) ?*struct_bpf_link;
pub extern fn bpf_program__attach_cgroup(prog: ?*const struct_bpf_program, cgroup_fd: c_int) ?*struct_bpf_link;
pub extern fn bpf_program__attach_netns(prog: ?*const struct_bpf_program, netns_fd: c_int) ?*struct_bpf_link;
pub extern fn bpf_program__attach_xdp(prog: ?*const struct_bpf_program, ifindex: c_int) ?*struct_bpf_link;
pub extern fn bpf_program__attach_freplace(prog: ?*const struct_bpf_program, target_fd: c_int, attach_func_name: [*c]const u8) ?*struct_bpf_link;
pub const struct_bpf_netfilter_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    pf: __u32 = @import("std").mem.zeroes(__u32),
    hooknum: __u32 = @import("std").mem.zeroes(__u32),
    priority: __s32 = @import("std").mem.zeroes(__s32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub extern fn bpf_program__attach_netfilter(prog: ?*const struct_bpf_program, opts: [*c]const struct_bpf_netfilter_opts) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:795:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_tcx_opts = opaque {};
pub extern fn bpf_program__attach_tcx(prog: ?*const struct_bpf_program, ifindex: c_int, opts: ?*const struct_bpf_tcx_opts) ?*struct_bpf_link;
// /usr/include/bpf/libbpf.h:810:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_netkit_opts = opaque {};
pub extern fn bpf_program__attach_netkit(prog: ?*const struct_bpf_program, ifindex: c_int, opts: ?*const struct_bpf_netkit_opts) ?*struct_bpf_link;
pub extern fn bpf_map__attach_struct_ops(map: ?*const struct_bpf_map) ?*struct_bpf_link;
pub extern fn bpf_link__update_map(link: ?*struct_bpf_link, map: ?*const struct_bpf_map) c_int;
pub const struct_bpf_iter_attach_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    link_info: [*c]union_bpf_iter_link_info = @import("std").mem.zeroes([*c]union_bpf_iter_link_info),
    link_info_len: __u32 = @import("std").mem.zeroes(__u32),
};
pub extern fn bpf_program__attach_iter(prog: ?*const struct_bpf_program, opts: [*c]const struct_bpf_iter_attach_opts) ?*struct_bpf_link;
pub extern fn bpf_program__type(prog: ?*const struct_bpf_program) enum_bpf_prog_type;
pub extern fn bpf_program__set_type(prog: ?*struct_bpf_program, @"type": enum_bpf_prog_type) c_int;
pub extern fn bpf_program__expected_attach_type(prog: ?*const struct_bpf_program) enum_bpf_attach_type;
pub extern fn bpf_program__set_expected_attach_type(prog: ?*struct_bpf_program, @"type": enum_bpf_attach_type) c_int;
pub extern fn bpf_program__flags(prog: ?*const struct_bpf_program) __u32;
pub extern fn bpf_program__set_flags(prog: ?*struct_bpf_program, flags: __u32) c_int;
pub extern fn bpf_program__log_level(prog: ?*const struct_bpf_program) __u32;
pub extern fn bpf_program__set_log_level(prog: ?*struct_bpf_program, log_level: __u32) c_int;
pub extern fn bpf_program__log_buf(prog: ?*const struct_bpf_program, log_size: [*c]usize) [*c]const u8;
pub extern fn bpf_program__set_log_buf(prog: ?*struct_bpf_program, log_buf: [*c]u8, log_size: usize) c_int;
pub extern fn bpf_program__set_attach_target(prog: ?*struct_bpf_program, attach_prog_fd: c_int, attach_func_name: [*c]const u8) c_int;
pub extern fn bpf_object__find_map_by_name(obj: ?*const struct_bpf_object, name: [*c]const u8) ?*struct_bpf_map;
pub extern fn bpf_object__find_map_fd_by_name(obj: ?*const struct_bpf_object, name: [*c]const u8) c_int;
pub extern fn bpf_object__next_map(obj: ?*const struct_bpf_object, map: ?*const struct_bpf_map) ?*struct_bpf_map;
pub extern fn bpf_object__prev_map(obj: ?*const struct_bpf_object, map: ?*const struct_bpf_map) ?*struct_bpf_map;
pub extern fn bpf_map__set_autocreate(map: ?*struct_bpf_map, autocreate: bool) c_int;
pub extern fn bpf_map__autocreate(map: ?*const struct_bpf_map) bool;
pub extern fn bpf_map__fd(map: ?*const struct_bpf_map) c_int;
pub extern fn bpf_map__reuse_fd(map: ?*struct_bpf_map, fd: c_int) c_int;
pub extern fn bpf_map__name(map: ?*const struct_bpf_map) [*c]const u8;
pub extern fn bpf_map__type(map: ?*const struct_bpf_map) enum_bpf_map_type;
pub extern fn bpf_map__set_type(map: ?*struct_bpf_map, @"type": enum_bpf_map_type) c_int;
pub extern fn bpf_map__max_entries(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__set_max_entries(map: ?*struct_bpf_map, max_entries: __u32) c_int;
pub extern fn bpf_map__map_flags(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__set_map_flags(map: ?*struct_bpf_map, flags: __u32) c_int;
pub extern fn bpf_map__numa_node(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__set_numa_node(map: ?*struct_bpf_map, numa_node: __u32) c_int;
pub extern fn bpf_map__key_size(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__set_key_size(map: ?*struct_bpf_map, size: __u32) c_int;
pub extern fn bpf_map__value_size(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__set_value_size(map: ?*struct_bpf_map, size: __u32) c_int;
pub extern fn bpf_map__btf_key_type_id(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__btf_value_type_id(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__ifindex(map: ?*const struct_bpf_map) __u32;
pub extern fn bpf_map__set_ifindex(map: ?*struct_bpf_map, ifindex: __u32) c_int;
pub extern fn bpf_map__map_extra(map: ?*const struct_bpf_map) __u64;
pub extern fn bpf_map__set_map_extra(map: ?*struct_bpf_map, map_extra: __u64) c_int;
pub extern fn bpf_map__set_initial_value(map: ?*struct_bpf_map, data: ?*const anyopaque, size: usize) c_int;
pub extern fn bpf_map__initial_value(map: ?*struct_bpf_map, psize: [*c]usize) ?*anyopaque;
pub extern fn bpf_map__is_internal(map: ?*const struct_bpf_map) bool;
pub extern fn bpf_map__set_pin_path(map: ?*struct_bpf_map, path: [*c]const u8) c_int;
pub extern fn bpf_map__pin_path(map: ?*const struct_bpf_map) [*c]const u8;
pub extern fn bpf_map__is_pinned(map: ?*const struct_bpf_map) bool;
pub extern fn bpf_map__pin(map: ?*struct_bpf_map, path: [*c]const u8) c_int;
pub extern fn bpf_map__unpin(map: ?*struct_bpf_map, path: [*c]const u8) c_int;
pub extern fn bpf_map__set_inner_map_fd(map: ?*struct_bpf_map, fd: c_int) c_int;
pub extern fn bpf_map__inner_map(map: ?*struct_bpf_map) ?*struct_bpf_map;
pub extern fn bpf_map__lookup_elem(map: ?*const struct_bpf_map, key: ?*const anyopaque, key_sz: usize, value: ?*anyopaque, value_sz: usize, flags: __u64) c_int;
pub extern fn bpf_map__update_elem(map: ?*const struct_bpf_map, key: ?*const anyopaque, key_sz: usize, value: ?*const anyopaque, value_sz: usize, flags: __u64) c_int;
pub extern fn bpf_map__delete_elem(map: ?*const struct_bpf_map, key: ?*const anyopaque, key_sz: usize, flags: __u64) c_int;
pub extern fn bpf_map__lookup_and_delete_elem(map: ?*const struct_bpf_map, key: ?*const anyopaque, key_sz: usize, value: ?*anyopaque, value_sz: usize, flags: __u64) c_int;
pub extern fn bpf_map__get_next_key(map: ?*const struct_bpf_map, cur_key: ?*const anyopaque, next_key: ?*anyopaque, key_sz: usize) c_int;
// /usr/include/bpf/libbpf.h:1171:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_xdp_set_link_opts = opaque {};
// /usr/include/bpf/libbpf.h:1178:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_xdp_attach_opts = opaque {};
// /usr/include/bpf/libbpf.h:1191:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_xdp_query_opts = opaque {};
pub extern fn bpf_xdp_attach(ifindex: c_int, prog_fd: c_int, flags: __u32, opts: ?*const struct_bpf_xdp_attach_opts) c_int;
pub extern fn bpf_xdp_detach(ifindex: c_int, flags: __u32, opts: ?*const struct_bpf_xdp_attach_opts) c_int;
pub extern fn bpf_xdp_query(ifindex: c_int, flags: c_int, opts: ?*struct_bpf_xdp_query_opts) c_int;
pub extern fn bpf_xdp_query_id(ifindex: c_int, flags: c_int, prog_id: [*c]__u32) c_int;
pub const BPF_TC_INGRESS: c_int = 1;
pub const BPF_TC_EGRESS: c_int = 2;
pub const BPF_TC_CUSTOM: c_int = 4;
pub const enum_bpf_tc_attach_point = c_uint;
pub const BPF_TC_F_REPLACE: c_int = 1;
pub const enum_bpf_tc_flags = c_uint;
// /usr/include/bpf/libbpf.h:1221:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_tc_hook = opaque {};
// /usr/include/bpf/libbpf.h:1232:2: warning: struct demoted to opaque type - has bitfield
pub const struct_bpf_tc_opts = opaque {};
pub extern fn bpf_tc_hook_create(hook: ?*struct_bpf_tc_hook) c_int;
pub extern fn bpf_tc_hook_destroy(hook: ?*struct_bpf_tc_hook) c_int;
pub extern fn bpf_tc_attach(hook: ?*const struct_bpf_tc_hook, opts: ?*struct_bpf_tc_opts) c_int;
pub extern fn bpf_tc_detach(hook: ?*const struct_bpf_tc_hook, opts: ?*const struct_bpf_tc_opts) c_int;
pub extern fn bpf_tc_query(hook: ?*const struct_bpf_tc_hook, opts: ?*struct_bpf_tc_opts) c_int;
pub const struct_ring_buffer = opaque {};
pub const struct_ring = opaque {};
pub const struct_user_ring_buffer = opaque {};
pub const ring_buffer_sample_fn = ?*const fn (?*anyopaque, ?*anyopaque, usize) callconv(.C) c_int;
pub const struct_ring_buffer_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
};
pub extern fn ring_buffer__new(map_fd: c_int, sample_cb: ring_buffer_sample_fn, ctx: ?*anyopaque, opts: [*c]const struct_ring_buffer_opts) ?*struct_ring_buffer;
pub extern fn ring_buffer__free(rb: ?*struct_ring_buffer) void;
pub extern fn ring_buffer__add(rb: ?*struct_ring_buffer, map_fd: c_int, sample_cb: ring_buffer_sample_fn, ctx: ?*anyopaque) c_int;
pub extern fn ring_buffer__poll(rb: ?*struct_ring_buffer, timeout_ms: c_int) c_int;
pub extern fn ring_buffer__consume(rb: ?*struct_ring_buffer) c_int;
pub extern fn ring_buffer__epoll_fd(rb: ?*const struct_ring_buffer) c_int;
pub extern fn ring_buffer__ring(rb: ?*struct_ring_buffer, idx: c_uint) ?*struct_ring;
pub extern fn ring__consumer_pos(r: ?*const struct_ring) c_ulong;
pub extern fn ring__producer_pos(r: ?*const struct_ring) c_ulong;
pub extern fn ring__avail_data_size(r: ?*const struct_ring) usize;
pub extern fn ring__size(r: ?*const struct_ring) usize;
pub extern fn ring__map_fd(r: ?*const struct_ring) c_int;
pub extern fn ring__consume(r: ?*struct_ring) c_int;
pub const struct_user_ring_buffer_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
};
pub extern fn user_ring_buffer__new(map_fd: c_int, opts: [*c]const struct_user_ring_buffer_opts) ?*struct_user_ring_buffer;
pub extern fn user_ring_buffer__reserve(rb: ?*struct_user_ring_buffer, size: __u32) ?*anyopaque;
pub extern fn user_ring_buffer__reserve_blocking(rb: ?*struct_user_ring_buffer, size: __u32, timeout_ms: c_int) ?*anyopaque;
pub extern fn user_ring_buffer__submit(rb: ?*struct_user_ring_buffer, sample: ?*anyopaque) void;
pub extern fn user_ring_buffer__discard(rb: ?*struct_user_ring_buffer, sample: ?*anyopaque) void;
pub extern fn user_ring_buffer__free(rb: ?*struct_user_ring_buffer) void;
pub const struct_perf_buffer = opaque {};
pub const perf_buffer_sample_fn = ?*const fn (?*anyopaque, c_int, ?*anyopaque, __u32) callconv(.C) void;
pub const perf_buffer_lost_fn = ?*const fn (?*anyopaque, c_int, __u64) callconv(.C) void;
// /usr/include/bpf/libbpf.h:1463:2: warning: struct demoted to opaque type - has bitfield
pub const struct_perf_buffer_opts = opaque {};
pub extern fn perf_buffer__new(map_fd: c_int, page_cnt: usize, sample_cb: perf_buffer_sample_fn, lost_cb: perf_buffer_lost_fn, ctx: ?*anyopaque, opts: ?*const struct_perf_buffer_opts) ?*struct_perf_buffer;
pub const LIBBPF_PERF_EVENT_DONE: c_int = 0;
pub const LIBBPF_PERF_EVENT_ERROR: c_int = -1;
pub const LIBBPF_PERF_EVENT_CONT: c_int = -2;
pub const enum_bpf_perf_event_ret = c_int;
pub const struct_perf_event_header = opaque {};
pub const perf_buffer_event_fn = ?*const fn (?*anyopaque, c_int, ?*struct_perf_event_header) callconv(.C) enum_bpf_perf_event_ret;
// /usr/include/bpf/libbpf.h:1498:2: warning: struct demoted to opaque type - has bitfield
pub const struct_perf_buffer_raw_opts = opaque {};
pub const struct_perf_event_attr = opaque {};
pub extern fn perf_buffer__new_raw(map_fd: c_int, page_cnt: usize, attr: ?*struct_perf_event_attr, event_cb: perf_buffer_event_fn, ctx: ?*anyopaque, opts: ?*const struct_perf_buffer_raw_opts) ?*struct_perf_buffer;
pub extern fn perf_buffer__free(pb: ?*struct_perf_buffer) void;
pub extern fn perf_buffer__epoll_fd(pb: ?*const struct_perf_buffer) c_int;
pub extern fn perf_buffer__poll(pb: ?*struct_perf_buffer, timeout_ms: c_int) c_int;
pub extern fn perf_buffer__consume(pb: ?*struct_perf_buffer) c_int;
pub extern fn perf_buffer__consume_buffer(pb: ?*struct_perf_buffer, buf_idx: usize) c_int;
pub extern fn perf_buffer__buffer_cnt(pb: ?*const struct_perf_buffer) usize;
pub extern fn perf_buffer__buffer_fd(pb: ?*const struct_perf_buffer, buf_idx: usize) c_int;
pub extern fn perf_buffer__buffer(pb: ?*struct_perf_buffer, buf_idx: c_int, buf: [*c]?*anyopaque, buf_size: [*c]usize) c_int;
pub const struct_bpf_prog_linfo = opaque {};
pub extern fn bpf_prog_linfo__free(prog_linfo: ?*struct_bpf_prog_linfo) void;
pub extern fn bpf_prog_linfo__new(info: ?*const struct_bpf_prog_info) ?*struct_bpf_prog_linfo;
pub extern fn bpf_prog_linfo__lfind_addr_func(prog_linfo: ?*const struct_bpf_prog_linfo, addr: __u64, func_idx: __u32, nr_skip: __u32) [*c]const struct_bpf_line_info;
pub extern fn bpf_prog_linfo__lfind(prog_linfo: ?*const struct_bpf_prog_linfo, insn_off: __u32, nr_skip: __u32) [*c]const struct_bpf_line_info;
pub extern fn libbpf_probe_bpf_prog_type(prog_type: enum_bpf_prog_type, opts: ?*const anyopaque) c_int;
pub extern fn libbpf_probe_bpf_map_type(map_type: enum_bpf_map_type, opts: ?*const anyopaque) c_int;
pub extern fn libbpf_probe_bpf_helper(prog_type: enum_bpf_prog_type, helper_id: enum_bpf_func_id, opts: ?*const anyopaque) c_int;
pub extern fn libbpf_num_possible_cpus() c_int;
pub const struct_bpf_map_skeleton = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    map: [*c]?*struct_bpf_map = @import("std").mem.zeroes([*c]?*struct_bpf_map),
    mmaped: [*c]?*anyopaque = @import("std").mem.zeroes([*c]?*anyopaque),
};
pub const struct_bpf_prog_skeleton = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    prog: [*c]?*struct_bpf_program = @import("std").mem.zeroes([*c]?*struct_bpf_program),
    link: [*c]?*struct_bpf_link = @import("std").mem.zeroes([*c]?*struct_bpf_link),
};
pub const struct_bpf_object_skeleton = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    data: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    data_sz: usize = @import("std").mem.zeroes(usize),
    obj: [*c]?*struct_bpf_object = @import("std").mem.zeroes([*c]?*struct_bpf_object),
    map_cnt: c_int = @import("std").mem.zeroes(c_int),
    map_skel_sz: c_int = @import("std").mem.zeroes(c_int),
    maps: [*c]struct_bpf_map_skeleton = @import("std").mem.zeroes([*c]struct_bpf_map_skeleton),
    prog_cnt: c_int = @import("std").mem.zeroes(c_int),
    prog_skel_sz: c_int = @import("std").mem.zeroes(c_int),
    progs: [*c]struct_bpf_prog_skeleton = @import("std").mem.zeroes([*c]struct_bpf_prog_skeleton),
};
pub extern fn bpf_object__open_skeleton(s: [*c]struct_bpf_object_skeleton, opts: ?*const struct_bpf_object_open_opts) c_int;
pub extern fn bpf_object__load_skeleton(s: [*c]struct_bpf_object_skeleton) c_int;
pub extern fn bpf_object__attach_skeleton(s: [*c]struct_bpf_object_skeleton) c_int;
pub extern fn bpf_object__detach_skeleton(s: [*c]struct_bpf_object_skeleton) void;
pub extern fn bpf_object__destroy_skeleton(s: [*c]struct_bpf_object_skeleton) void;
pub const struct_bpf_var_skeleton = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    map: [*c]?*struct_bpf_map = @import("std").mem.zeroes([*c]?*struct_bpf_map),
    addr: [*c]?*anyopaque = @import("std").mem.zeroes([*c]?*anyopaque),
};
pub const struct_bpf_object_subskeleton = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    obj: ?*const struct_bpf_object = @import("std").mem.zeroes(?*const struct_bpf_object),
    map_cnt: c_int = @import("std").mem.zeroes(c_int),
    map_skel_sz: c_int = @import("std").mem.zeroes(c_int),
    maps: [*c]struct_bpf_map_skeleton = @import("std").mem.zeroes([*c]struct_bpf_map_skeleton),
    prog_cnt: c_int = @import("std").mem.zeroes(c_int),
    prog_skel_sz: c_int = @import("std").mem.zeroes(c_int),
    progs: [*c]struct_bpf_prog_skeleton = @import("std").mem.zeroes([*c]struct_bpf_prog_skeleton),
    var_cnt: c_int = @import("std").mem.zeroes(c_int),
    var_skel_sz: c_int = @import("std").mem.zeroes(c_int),
    vars: [*c]struct_bpf_var_skeleton = @import("std").mem.zeroes([*c]struct_bpf_var_skeleton),
};
pub extern fn bpf_object__open_subskeleton(s: [*c]struct_bpf_object_subskeleton) c_int;
pub extern fn bpf_object__destroy_subskeleton(s: [*c]struct_bpf_object_subskeleton) void;
pub const struct_gen_loader_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    data: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    insns: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    data_sz: __u32 = @import("std").mem.zeroes(__u32),
    insns_sz: __u32 = @import("std").mem.zeroes(__u32),
};
pub extern fn bpf_object__gen_loader(obj: ?*struct_bpf_object, opts: [*c]struct_gen_loader_opts) c_int;
pub const TRI_NO: c_int = 0;
pub const TRI_YES: c_int = 1;
pub const TRI_MODULE: c_int = 2;
pub const enum_libbpf_tristate = c_uint;
pub const struct_bpf_linker_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
};
pub const struct_bpf_linker_file_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
};
pub const struct_bpf_linker = opaque {};
pub extern fn bpf_linker__new(filename: [*c]const u8, opts: [*c]struct_bpf_linker_opts) ?*struct_bpf_linker;
pub extern fn bpf_linker__add_file(linker: ?*struct_bpf_linker, filename: [*c]const u8, opts: [*c]const struct_bpf_linker_file_opts) c_int;
pub extern fn bpf_linker__finalize(linker: ?*struct_bpf_linker) c_int;
pub extern fn bpf_linker__free(linker: ?*struct_bpf_linker) void;
pub const struct_bpf_prog_load_opts = opaque {};
pub const libbpf_prog_setup_fn_t = ?*const fn (?*struct_bpf_program, c_long) callconv(.C) c_int;
pub const libbpf_prog_prepare_load_fn_t = ?*const fn (?*struct_bpf_program, ?*struct_bpf_prog_load_opts, c_long) callconv(.C) c_int;
pub const libbpf_prog_attach_fn_t = ?*const fn (?*const struct_bpf_program, c_long, [*c]?*struct_bpf_link) callconv(.C) c_int;
pub const struct_libbpf_prog_handler_opts = extern struct {
    sz: usize = @import("std").mem.zeroes(usize),
    cookie: c_long = @import("std").mem.zeroes(c_long),
    prog_setup_fn: libbpf_prog_setup_fn_t = @import("std").mem.zeroes(libbpf_prog_setup_fn_t),
    prog_prepare_load_fn: libbpf_prog_prepare_load_fn_t = @import("std").mem.zeroes(libbpf_prog_prepare_load_fn_t),
    prog_attach_fn: libbpf_prog_attach_fn_t = @import("std").mem.zeroes(libbpf_prog_attach_fn_t),
};
pub extern fn libbpf_register_prog_handler(sec: [*c]const u8, prog_type: enum_bpf_prog_type, exp_attach_type: enum_bpf_attach_type, opts: [*c]const struct_libbpf_prog_handler_opts) c_int;
pub extern fn libbpf_unregister_prog_handler(handler_id: c_int) c_int;
pub const struct_sockaddr_xdp = extern struct {
    sxdp_family: __u16 = @import("std").mem.zeroes(__u16),
    sxdp_flags: __u16 = @import("std").mem.zeroes(__u16),
    sxdp_ifindex: __u32 = @import("std").mem.zeroes(__u32),
    sxdp_queue_id: __u32 = @import("std").mem.zeroes(__u32),
    sxdp_shared_umem_fd: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_xdp_ring_offset = extern struct {
    producer: __u64 = @import("std").mem.zeroes(__u64),
    consumer: __u64 = @import("std").mem.zeroes(__u64),
    desc: __u64 = @import("std").mem.zeroes(__u64),
    flags: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_xdp_mmap_offsets = extern struct {
    rx: struct_xdp_ring_offset = @import("std").mem.zeroes(struct_xdp_ring_offset),
    tx: struct_xdp_ring_offset = @import("std").mem.zeroes(struct_xdp_ring_offset),
    fr: struct_xdp_ring_offset = @import("std").mem.zeroes(struct_xdp_ring_offset),
    cr: struct_xdp_ring_offset = @import("std").mem.zeroes(struct_xdp_ring_offset),
};
pub const struct_xdp_umem_reg = extern struct {
    addr: __u64 = @import("std").mem.zeroes(__u64),
    len: __u64 = @import("std").mem.zeroes(__u64),
    chunk_size: __u32 = @import("std").mem.zeroes(__u32),
    headroom: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_xdp_statistics = extern struct {
    rx_dropped: __u64 = @import("std").mem.zeroes(__u64),
    rx_invalid_descs: __u64 = @import("std").mem.zeroes(__u64),
    tx_invalid_descs: __u64 = @import("std").mem.zeroes(__u64),
    rx_ring_full: __u64 = @import("std").mem.zeroes(__u64),
    rx_fill_ring_empty_descs: __u64 = @import("std").mem.zeroes(__u64),
    tx_ring_empty_descs: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_xdp_options = extern struct {
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_xdp_desc = extern struct {
    addr: __u64 = @import("std").mem.zeroes(__u64),
    len: __u32 = @import("std").mem.zeroes(__u32),
    options: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_xsk_ring_prod = extern struct {
    cached_prod: __u32 = @import("std").mem.zeroes(__u32),
    cached_cons: __u32 = @import("std").mem.zeroes(__u32),
    mask: __u32 = @import("std").mem.zeroes(__u32),
    size: __u32 = @import("std").mem.zeroes(__u32),
    producer: [*c]__u32 = @import("std").mem.zeroes([*c]__u32),
    consumer: [*c]__u32 = @import("std").mem.zeroes([*c]__u32),
    ring: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    flags: [*c]__u32 = @import("std").mem.zeroes([*c]__u32),
};
pub const struct_xsk_ring_cons = extern struct {
    cached_prod: __u32 = @import("std").mem.zeroes(__u32),
    cached_cons: __u32 = @import("std").mem.zeroes(__u32),
    mask: __u32 = @import("std").mem.zeroes(__u32),
    size: __u32 = @import("std").mem.zeroes(__u32),
    producer: [*c]__u32 = @import("std").mem.zeroes([*c]__u32),
    consumer: [*c]__u32 = @import("std").mem.zeroes([*c]__u32),
    ring: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    flags: [*c]__u32 = @import("std").mem.zeroes([*c]__u32),
};
pub const struct_xsk_umem = opaque {};
pub const struct_xsk_socket = opaque {};
pub inline fn xsk_ring_prod__fill_addr(arg_fill: [*c]struct_xsk_ring_prod, arg_idx: __u32) [*c]__u64 {
    var fill = arg_fill;
    _ = &fill;
    var idx = arg_idx;
    _ = &idx;
    var addrs: [*c]__u64 = @as([*c]__u64, @ptrCast(@alignCast(fill.*.ring)));
    _ = &addrs;
    return &addrs[idx & fill.*.mask];
}
pub inline fn xsk_ring_cons__comp_addr(arg_comp: [*c]const struct_xsk_ring_cons, arg_idx: __u32) [*c]const __u64 {
    var comp = arg_comp;
    _ = &comp;
    var idx = arg_idx;
    _ = &idx;
    var addrs: [*c]const __u64 = @as([*c]const __u64, @ptrCast(@alignCast(comp.*.ring)));
    _ = &addrs;
    return &addrs[idx & comp.*.mask];
}
pub inline fn xsk_ring_prod__tx_desc(arg_tx: [*c]struct_xsk_ring_prod, arg_idx: __u32) [*c]struct_xdp_desc {
    var tx = arg_tx;
    _ = &tx;
    var idx = arg_idx;
    _ = &idx;
    var descs: [*c]struct_xdp_desc = @as([*c]struct_xdp_desc, @ptrCast(@alignCast(tx.*.ring)));
    _ = &descs;
    return &descs[idx & tx.*.mask];
}
pub inline fn xsk_ring_cons__rx_desc(arg_rx: [*c]const struct_xsk_ring_cons, arg_idx: __u32) [*c]const struct_xdp_desc {
    var rx = arg_rx;
    _ = &rx;
    var idx = arg_idx;
    _ = &idx;
    var descs: [*c]const struct_xdp_desc = @as([*c]const struct_xdp_desc, @ptrCast(@alignCast(rx.*.ring)));
    _ = &descs;
    return &descs[idx & rx.*.mask];
}
pub inline fn xsk_ring_prod__needs_wakeup(arg_r: [*c]const struct_xsk_ring_prod) c_int {
    var r = arg_r;
    _ = &r;
    return @as(c_int, @bitCast(r.*.flags.* & @as(__u32, @bitCast(@as(c_int, 1) << @intCast(0)))));
}
// /usr/include/xdp/xsk.h:106:19: warning: TODO implement translation of stmt class AtomicExprClass

// /usr/include/xdp/xsk.h:92:25: warning: unable to translate function, demoted to extern
pub extern fn xsk_prod_nb_free(arg_r: [*c]struct_xsk_ring_prod, arg_nb: __u32) __u32;
// /usr/include/xdp/xsk.h:117:20: warning: TODO implement translation of stmt class AtomicExprClass

// /usr/include/xdp/xsk.h:112:25: warning: unable to translate function, demoted to extern
pub extern fn xsk_cons_nb_avail(arg_r: [*c]struct_xsk_ring_cons, arg_nb: __u32) __u32;
pub inline fn xsk_ring_prod__reserve(arg_prod: [*c]struct_xsk_ring_prod, arg_nb: __u32, arg_idx: [*c]__u32) __u32 {
    var prod = arg_prod;
    _ = &prod;
    var nb = arg_nb;
    _ = &nb;
    var idx = arg_idx;
    _ = &idx;
    if (xsk_prod_nb_free(prod, nb) < nb) return 0;
    idx.* = prod.*.cached_prod;
    prod.*.cached_prod +%= nb;
    return nb;
}
// /usr/include/xdp/xsk.h:140:2: warning: TODO implement translation of stmt class AtomicExprClass

// /usr/include/xdp/xsk.h:135:24: warning: unable to translate function, demoted to extern
pub extern fn xsk_ring_prod__submit(arg_prod: [*c]struct_xsk_ring_prod, arg_nb: __u32) void;
pub inline fn xsk_ring_cons__peek(arg_cons: [*c]struct_xsk_ring_cons, arg_nb: __u32, arg_idx: [*c]__u32) __u32 {
    var cons = arg_cons;
    _ = &cons;
    var nb = arg_nb;
    _ = &nb;
    var idx = arg_idx;
    _ = &idx;
    var entries: __u32 = xsk_cons_nb_avail(cons, nb);
    _ = &entries;
    if (entries > @as(__u32, @bitCast(@as(c_int, 0)))) {
        idx.* = cons.*.cached_cons;
        cons.*.cached_cons +%= entries;
    }
    return entries;
}
pub inline fn xsk_ring_cons__cancel(arg_cons: [*c]struct_xsk_ring_cons, arg_nb: __u32) void {
    var cons = arg_cons;
    _ = &cons;
    var nb = arg_nb;
    _ = &nb;
    cons.*.cached_cons -%= nb;
}
// /usr/include/xdp/xsk.h:165:2: warning: TODO implement translation of stmt class AtomicExprClass

// /usr/include/xdp/xsk.h:160:24: warning: unable to translate function, demoted to extern
pub extern fn xsk_ring_cons__release(arg_cons: [*c]struct_xsk_ring_cons, arg_nb: __u32) void;
pub inline fn xsk_umem__get_data(arg_umem_area: ?*anyopaque, arg_addr: __u64) ?*anyopaque {
    var umem_area = arg_umem_area;
    _ = &umem_area;
    var addr = arg_addr;
    _ = &addr;
    return @as(?*anyopaque, @ptrCast(&@as([*c]u8, @ptrCast(@alignCast(umem_area)))[@as(usize, @intCast(addr))]));
}
pub inline fn xsk_umem__extract_addr(arg_addr: __u64) __u64 {
    var addr = arg_addr;
    _ = &addr;
    return addr & ((@as(c_ulonglong, 1) << @intCast(48)) -% @as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 1)))));
}
pub inline fn xsk_umem__extract_offset(arg_addr: __u64) __u64 {
    var addr = arg_addr;
    _ = &addr;
    return addr >> @intCast(48);
}
pub inline fn xsk_umem__add_offset_to_addr(arg_addr: __u64) __u64 {
    var addr = arg_addr;
    _ = &addr;
    return xsk_umem__extract_addr(addr) +% xsk_umem__extract_offset(addr);
}
pub extern fn xsk_umem__fd(umem: ?*const struct_xsk_umem) c_int;
pub extern fn xsk_socket__fd(xsk: ?*const struct_xsk_socket) c_int;
pub const struct_xsk_umem_config = extern struct {
    fill_size: __u32 = @import("std").mem.zeroes(__u32),
    comp_size: __u32 = @import("std").mem.zeroes(__u32),
    frame_size: __u32 = @import("std").mem.zeroes(__u32),
    frame_headroom: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub extern fn xsk_setup_xdp_prog(ifindex: c_int, xsks_map_fd: [*c]c_int) c_int;
pub extern fn xsk_socket__update_xskmap(xsk: ?*struct_xsk_socket, xsks_map_fd: c_int) c_int;
const union_unnamed_123 = extern union {
    libbpf_flags: __u32,
    libxdp_flags: __u32,
};
pub const struct_xsk_socket_config = extern struct {
    rx_size: __u32 = @import("std").mem.zeroes(__u32),
    tx_size: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_123 = @import("std").mem.zeroes(union_unnamed_123),
    xdp_flags: __u32 = @import("std").mem.zeroes(__u32),
    bind_flags: __u16 = @import("std").mem.zeroes(__u16),
};
pub extern fn xsk_umem__create(umem: [*c]?*struct_xsk_umem, umem_area: ?*anyopaque, size: __u64, fill: [*c]struct_xsk_ring_prod, comp: [*c]struct_xsk_ring_cons, config: [*c]const struct_xsk_umem_config) c_int;
pub extern fn xsk_umem__create_with_fd(umem: [*c]?*struct_xsk_umem, fd: c_int, umem_area: ?*anyopaque, size: __u64, fill: [*c]struct_xsk_ring_prod, comp: [*c]struct_xsk_ring_cons, config: [*c]const struct_xsk_umem_config) c_int;
pub extern fn xsk_socket__create(xsk: [*c]?*struct_xsk_socket, ifname: [*c]const u8, queue_id: __u32, umem: ?*struct_xsk_umem, rx: [*c]struct_xsk_ring_cons, tx: [*c]struct_xsk_ring_prod, config: [*c]const struct_xsk_socket_config) c_int;
pub extern fn xsk_socket__create_shared(xsk_ptr: [*c]?*struct_xsk_socket, ifname: [*c]const u8, queue_id: __u32, umem: ?*struct_xsk_umem, rx: [*c]struct_xsk_ring_cons, tx: [*c]struct_xsk_ring_prod, fill: [*c]struct_xsk_ring_prod, comp: [*c]struct_xsk_ring_cons, config: [*c]const struct_xsk_socket_config) c_int;
pub extern fn xsk_umem__delete(umem: ?*struct_xsk_umem) c_int;
pub extern fn xsk_socket__delete(xsk: ?*struct_xsk_socket) void;
pub const struct_iovec = extern struct {
    iov_base: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    iov_len: usize = @import("std").mem.zeroes(usize),
};
pub const socklen_t = __socklen_t;
pub const SOCK_STREAM: c_int = 1;
pub const SOCK_DGRAM: c_int = 2;
pub const SOCK_RAW: c_int = 3;
pub const SOCK_RDM: c_int = 4;
pub const SOCK_SEQPACKET: c_int = 5;
pub const SOCK_DCCP: c_int = 6;
pub const SOCK_PACKET: c_int = 10;
pub const SOCK_CLOEXEC: c_int = 524288;
pub const SOCK_NONBLOCK: c_int = 2048;
pub const enum___socket_type = c_uint;
pub const sa_family_t = c_ushort;
pub const struct_sockaddr = extern struct {
    sa_family: sa_family_t = @import("std").mem.zeroes(sa_family_t),
    sa_data: [14]u8 = @import("std").mem.zeroes([14]u8),
};
pub const struct_sockaddr_storage = extern struct {
    ss_family: sa_family_t = @import("std").mem.zeroes(sa_family_t),
    __ss_padding: [118]u8 = @import("std").mem.zeroes([118]u8),
    __ss_align: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const MSG_OOB: c_int = 1;
pub const MSG_PEEK: c_int = 2;
pub const MSG_DONTROUTE: c_int = 4;
pub const MSG_CTRUNC: c_int = 8;
pub const MSG_PROXY: c_int = 16;
pub const MSG_TRUNC: c_int = 32;
pub const MSG_DONTWAIT: c_int = 64;
pub const MSG_EOR: c_int = 128;
pub const MSG_WAITALL: c_int = 256;
pub const MSG_FIN: c_int = 512;
pub const MSG_SYN: c_int = 1024;
pub const MSG_CONFIRM: c_int = 2048;
pub const MSG_RST: c_int = 4096;
pub const MSG_ERRQUEUE: c_int = 8192;
pub const MSG_NOSIGNAL: c_int = 16384;
pub const MSG_MORE: c_int = 32768;
pub const MSG_WAITFORONE: c_int = 65536;
pub const MSG_BATCH: c_int = 262144;
pub const MSG_ZEROCOPY: c_int = 67108864;
pub const MSG_FASTOPEN: c_int = 536870912;
pub const MSG_CMSG_CLOEXEC: c_int = 1073741824;
const enum_unnamed_124 = c_uint;
pub const struct_msghdr = extern struct {
    msg_name: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    msg_namelen: socklen_t = @import("std").mem.zeroes(socklen_t),
    msg_iov: [*c]struct_iovec = @import("std").mem.zeroes([*c]struct_iovec),
    msg_iovlen: usize = @import("std").mem.zeroes(usize),
    msg_control: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    msg_controllen: usize = @import("std").mem.zeroes(usize),
    msg_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_cmsghdr = extern struct {
    cmsg_len: usize align(8) = @import("std").mem.zeroes(usize),
    cmsg_level: c_int = @import("std").mem.zeroes(c_int),
    cmsg_type: c_int = @import("std").mem.zeroes(c_int),
    pub fn __cmsg_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 16)));
    }
};
pub fn __cmsg_nxthdr(arg___mhdr: [*c]struct_msghdr, arg___cmsg: [*c]struct_cmsghdr) callconv(.C) [*c]struct_cmsghdr {
    var __mhdr = arg___mhdr;
    _ = &__mhdr;
    var __cmsg = arg___cmsg;
    _ = &__cmsg;
    var __msg_control_ptr: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(__mhdr.*.msg_control)));
    _ = &__msg_control_ptr;
    var __cmsg_ptr: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(__cmsg)));
    _ = &__cmsg_ptr;
    var __size_needed: usize = @sizeOf(struct_cmsghdr) +% ((@sizeOf(usize) -% (__cmsg.*.cmsg_len & (@sizeOf(usize) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) & (@sizeOf(usize) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
    _ = &__size_needed;
    if (__cmsg.*.cmsg_len < @sizeOf(struct_cmsghdr)) return @as([*c]struct_cmsghdr, @ptrFromInt(@as(c_int, 0)));
    if ((@as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(__msg_control_ptr + __mhdr.*.msg_controllen) -% @intFromPtr(__cmsg_ptr))), @sizeOf(u8)))) < __size_needed) or ((@as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(__msg_control_ptr + __mhdr.*.msg_controllen) -% @intFromPtr(__cmsg_ptr))), @sizeOf(u8)))) -% __size_needed) < __cmsg.*.cmsg_len)) return @as([*c]struct_cmsghdr, @ptrFromInt(@as(c_int, 0)));
    __cmsg = @as([*c]struct_cmsghdr, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(__cmsg))) + (((__cmsg.*.cmsg_len +% @sizeOf(usize)) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) & @as(usize, @bitCast(~(@sizeOf(usize) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))))));
    return __cmsg;
}
pub const SCM_RIGHTS: c_int = 1;
const enum_unnamed_125 = c_uint;
pub const struct_linger = extern struct {
    l_onoff: c_int = @import("std").mem.zeroes(c_int),
    l_linger: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_osockaddr = extern struct {
    sa_family: c_ushort = @import("std").mem.zeroes(c_ushort),
    sa_data: [14]u8 = @import("std").mem.zeroes([14]u8),
};
pub const SHUT_RD: c_int = 0;
pub const SHUT_WR: c_int = 1;
pub const SHUT_RDWR: c_int = 2;
const enum_unnamed_126 = c_uint;
pub extern fn socket(__domain: c_int, __type: c_int, __protocol: c_int) c_int;
pub extern fn socketpair(__domain: c_int, __type: c_int, __protocol: c_int, __fds: [*c]c_int) c_int;
pub extern fn bind(__fd: c_int, __addr: [*c]const struct_sockaddr, __len: socklen_t) c_int;
pub extern fn getsockname(__fd: c_int, noalias __addr: [*c]struct_sockaddr, noalias __len: [*c]socklen_t) c_int;
pub extern fn connect(__fd: c_int, __addr: [*c]const struct_sockaddr, __len: socklen_t) c_int;
pub extern fn getpeername(__fd: c_int, noalias __addr: [*c]struct_sockaddr, noalias __len: [*c]socklen_t) c_int;
pub extern fn send(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __flags: c_int) isize;
pub extern fn recv(__fd: c_int, __buf: ?*anyopaque, __n: usize, __flags: c_int) isize;
pub extern fn sendto(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __flags: c_int, __addr: [*c]const struct_sockaddr, __addr_len: socklen_t) isize;
pub extern fn recvfrom(__fd: c_int, noalias __buf: ?*anyopaque, __n: usize, __flags: c_int, noalias __addr: [*c]struct_sockaddr, noalias __addr_len: [*c]socklen_t) isize;
pub extern fn sendmsg(__fd: c_int, __message: [*c]const struct_msghdr, __flags: c_int) isize;
pub extern fn recvmsg(__fd: c_int, __message: [*c]struct_msghdr, __flags: c_int) isize;
pub extern fn getsockopt(__fd: c_int, __level: c_int, __optname: c_int, noalias __optval: ?*anyopaque, noalias __optlen: [*c]socklen_t) c_int;
pub extern fn setsockopt(__fd: c_int, __level: c_int, __optname: c_int, __optval: ?*const anyopaque, __optlen: socklen_t) c_int;
pub extern fn listen(__fd: c_int, __n: c_int) c_int;
pub extern fn accept(__fd: c_int, noalias __addr: [*c]struct_sockaddr, noalias __addr_len: [*c]socklen_t) c_int;
pub extern fn shutdown(__fd: c_int, __how: c_int) c_int;
pub extern fn sockatmark(__fd: c_int) c_int;
pub extern fn isfdtype(__fd: c_int, __fdtype: c_int) c_int;
pub const struct_if_nameindex = extern struct {
    if_index: c_uint = @import("std").mem.zeroes(c_uint),
    if_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const IFF_UP: c_int = 1;
pub const IFF_BROADCAST: c_int = 2;
pub const IFF_DEBUG: c_int = 4;
pub const IFF_LOOPBACK: c_int = 8;
pub const IFF_POINTOPOINT: c_int = 16;
pub const IFF_NOTRAILERS: c_int = 32;
pub const IFF_RUNNING: c_int = 64;
pub const IFF_NOARP: c_int = 128;
pub const IFF_PROMISC: c_int = 256;
pub const IFF_ALLMULTI: c_int = 512;
pub const IFF_MASTER: c_int = 1024;
pub const IFF_SLAVE: c_int = 2048;
pub const IFF_MULTICAST: c_int = 4096;
pub const IFF_PORTSEL: c_int = 8192;
pub const IFF_AUTOMEDIA: c_int = 16384;
pub const IFF_DYNAMIC: c_int = 32768;
const enum_unnamed_127 = c_uint;
const union_unnamed_128 = extern union {
    ifu_broadaddr: struct_sockaddr,
    ifu_dstaddr: struct_sockaddr,
};
pub const struct_iface_129 = opaque {};
pub const struct_ifaddr = extern struct {
    ifa_addr: struct_sockaddr = @import("std").mem.zeroes(struct_sockaddr),
    ifa_ifu: union_unnamed_128 = @import("std").mem.zeroes(union_unnamed_128),
    ifa_ifp: ?*struct_iface_129 = @import("std").mem.zeroes(?*struct_iface_129),
    ifa_next: [*c]struct_ifaddr = @import("std").mem.zeroes([*c]struct_ifaddr),
};
pub const struct_ifmap = extern struct {
    mem_start: c_ulong = @import("std").mem.zeroes(c_ulong),
    mem_end: c_ulong = @import("std").mem.zeroes(c_ulong),
    base_addr: c_ushort = @import("std").mem.zeroes(c_ushort),
    irq: u8 = @import("std").mem.zeroes(u8),
    dma: u8 = @import("std").mem.zeroes(u8),
    port: u8 = @import("std").mem.zeroes(u8),
};
const union_unnamed_130 = extern union {
    ifrn_name: [16]u8,
};
const union_unnamed_131 = extern union {
    ifru_addr: struct_sockaddr,
    ifru_dstaddr: struct_sockaddr,
    ifru_broadaddr: struct_sockaddr,
    ifru_netmask: struct_sockaddr,
    ifru_hwaddr: struct_sockaddr,
    ifru_flags: c_short,
    ifru_ivalue: c_int,
    ifru_mtu: c_int,
    ifru_map: struct_ifmap,
    ifru_slave: [16]u8,
    ifru_newname: [16]u8,
    ifru_data: __caddr_t,
};
pub const struct_ifreq = extern struct {
    ifr_ifrn: union_unnamed_130 = @import("std").mem.zeroes(union_unnamed_130),
    ifr_ifru: union_unnamed_131 = @import("std").mem.zeroes(union_unnamed_131),
};
const union_unnamed_132 = extern union {
    ifcu_buf: __caddr_t,
    ifcu_req: [*c]struct_ifreq,
};
pub const struct_ifconf = extern struct {
    ifc_len: c_int = @import("std").mem.zeroes(c_int),
    ifc_ifcu: union_unnamed_132 = @import("std").mem.zeroes(union_unnamed_132),
};
pub extern fn if_nametoindex(__ifname: [*c]const u8) c_uint;
pub extern fn if_indextoname(__ifindex: c_uint, __ifname: [*c]u8) [*c]u8;
pub extern fn if_nameindex() [*c]struct_if_nameindex;
pub extern fn if_freenameindex(__ptr: [*c]struct_if_nameindex) void;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "18.1.6 (https://github.com/ziglang/zig-bootstrap 98bc6bf4fc4009888d33941daf6b600d20a42a56)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.6 (https://github.com/ziglang/zig-bootstrap 98bc6bf4fc4009888d33941daf6b600d20a42a56)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):96:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):199:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):221:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):229:9
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):357:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):358:9
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 39);
pub const NDEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __LIBBPF_XSK_H = "";
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/features.h:196:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C2X_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:216:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:217:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:225:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:256:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:263:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:265:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:268:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:298:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:309:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:315:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:325:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:332:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:338:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:347:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:348:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:356:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:366:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:379:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:389:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:401:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:414:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:423:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:441:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:450:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:468:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:469:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:512:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:561:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:638:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:639:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:653:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:654:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:699:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:700:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:701:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:711:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/cdefs.h:718:10
pub const __USE_EXTERN_INLINES = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/x86_64-linux-gnu/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/types/struct_FILE.h:106:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const __cookie_io_functions_t_defined = @as(c_int, 1);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:178:13
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/floatn-common.h:292:13
pub const _BITS_STDIO_H = @as(c_int, 1);
pub const __STDIO_INLINE = __extern_inline;
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __LIBBPF_LIBBPF_H = "";
pub const __STDARG_H = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/include/__stdarg_va_copy.h:11:9
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/thread-shared-types.h:113:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const __LINUX_BPF_H__ = "";
pub const _LINUX_TYPES_H = "";
pub const _ASM_GENERIC_TYPES_H = "";
pub const _ASM_GENERIC_INT_LL64_H = "";
pub const __ASM_X86_BITSPERLONG_H = "";
pub const __BITS_PER_LONG = @as(c_int, 64);
pub const __ASM_GENERIC_BITS_PER_LONG = "";
pub const _LINUX_POSIX_TYPES_H = "";
pub const _LINUX_STDDEF_H = "";
pub const __struct_group = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/stddef.h:26:9
pub const __DECLARE_FLEX_ARRAY = @compileError("unable to translate macro: undefined identifier `__empty_`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/stddef.h:42:9
pub const _ASM_X86_POSIX_TYPES_64_H = "";
pub const __ASM_GENERIC_POSIX_TYPES_H = "";
pub const __bitwise = "";
pub const __bitwise__ = "";
pub const __aligned_u64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/types.h:46:9
pub const __aligned_be64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/types.h:47:9
pub const __aligned_le64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/types.h:48:9
pub const __LINUX_BPF_COMMON_H__ = "";
pub inline fn BPF_CLASS(code: anytype) @TypeOf(code & @as(c_int, 0x07)) {
    _ = &code;
    return code & @as(c_int, 0x07);
}
pub const BPF_LD = @as(c_int, 0x00);
pub const BPF_LDX = @as(c_int, 0x01);
pub const BPF_ST = @as(c_int, 0x02);
pub const BPF_STX = @as(c_int, 0x03);
pub const BPF_ALU = @as(c_int, 0x04);
pub const BPF_JMP = @as(c_int, 0x05);
pub const BPF_RET = @as(c_int, 0x06);
pub const BPF_MISC = @as(c_int, 0x07);
pub inline fn BPF_SIZE(code: anytype) @TypeOf(code & @as(c_int, 0x18)) {
    _ = &code;
    return code & @as(c_int, 0x18);
}
pub const BPF_W = @as(c_int, 0x00);
pub const BPF_H = @as(c_int, 0x08);
pub const BPF_B = @as(c_int, 0x10);
pub inline fn BPF_MODE(code: anytype) @TypeOf(code & @as(c_int, 0xe0)) {
    _ = &code;
    return code & @as(c_int, 0xe0);
}
pub const BPF_IMM = @as(c_int, 0x00);
pub const BPF_ABS = @as(c_int, 0x20);
pub const BPF_IND = @as(c_int, 0x40);
pub const BPF_MEM = @as(c_int, 0x60);
pub const BPF_LEN = @as(c_int, 0x80);
pub const BPF_MSH = @as(c_int, 0xa0);
pub inline fn BPF_OP(code: anytype) @TypeOf(code & @as(c_int, 0xf0)) {
    _ = &code;
    return code & @as(c_int, 0xf0);
}
pub const BPF_ADD = @as(c_int, 0x00);
pub const BPF_SUB = @as(c_int, 0x10);
pub const BPF_MUL = @as(c_int, 0x20);
pub const BPF_DIV = @as(c_int, 0x30);
pub const BPF_OR = @as(c_int, 0x40);
pub const BPF_AND = @as(c_int, 0x50);
pub const BPF_LSH = @as(c_int, 0x60);
pub const BPF_RSH = @as(c_int, 0x70);
pub const BPF_NEG = @as(c_int, 0x80);
pub const BPF_MOD = @as(c_int, 0x90);
pub const BPF_XOR = @as(c_int, 0xa0);
pub const BPF_JA = @as(c_int, 0x00);
pub const BPF_JEQ = @as(c_int, 0x10);
pub const BPF_JGT = @as(c_int, 0x20);
pub const BPF_JGE = @as(c_int, 0x30);
pub const BPF_JSET = @as(c_int, 0x40);
pub inline fn BPF_SRC(code: anytype) @TypeOf(code & @as(c_int, 0x08)) {
    _ = &code;
    return code & @as(c_int, 0x08);
}
pub const BPF_K = @as(c_int, 0x00);
pub const BPF_X = @as(c_int, 0x08);
pub const BPF_MAXINSNS = @as(c_int, 4096);
pub const BPF_JMP32 = @as(c_int, 0x06);
pub const BPF_ALU64 = @as(c_int, 0x07);
pub const BPF_DW = @as(c_int, 0x18);
pub const BPF_ATOMIC = @as(c_int, 0xc0);
pub const BPF_XADD = @as(c_int, 0xc0);
pub const BPF_MOV = @as(c_int, 0xb0);
pub const BPF_ARSH = @as(c_int, 0xc0);
pub const BPF_END = @as(c_int, 0xd0);
pub const BPF_TO_LE = @as(c_int, 0x00);
pub const BPF_TO_BE = @as(c_int, 0x08);
pub const BPF_FROM_LE = BPF_TO_LE;
pub const BPF_FROM_BE = BPF_TO_BE;
pub const BPF_JNE = @as(c_int, 0x50);
pub const BPF_JLT = @as(c_int, 0xa0);
pub const BPF_JLE = @as(c_int, 0xb0);
pub const BPF_JSGT = @as(c_int, 0x60);
pub const BPF_JSGE = @as(c_int, 0x70);
pub const BPF_JSLT = @as(c_int, 0xc0);
pub const BPF_JSLE = @as(c_int, 0xd0);
pub const BPF_CALL = @as(c_int, 0x80);
pub const BPF_EXIT = @as(c_int, 0x90);
pub const BPF_FETCH = @as(c_int, 0x01);
pub const BPF_XCHG = @as(c_int, 0xe0) | BPF_FETCH;
pub const BPF_CMPXCHG = @as(c_int, 0xf0) | BPF_FETCH;
pub const MAX_BPF_REG = __MAX_BPF_REG;
pub const MAX_BPF_ATTACH_TYPE = __MAX_BPF_ATTACH_TYPE;
pub const BPF_F_ALLOW_OVERRIDE = @as(c_uint, 1) << @as(c_int, 0);
pub const BPF_F_ALLOW_MULTI = @as(c_uint, 1) << @as(c_int, 1);
pub const BPF_F_REPLACE = @as(c_uint, 1) << @as(c_int, 2);
pub const BPF_F_STRICT_ALIGNMENT = @as(c_uint, 1) << @as(c_int, 0);
pub const BPF_F_ANY_ALIGNMENT = @as(c_uint, 1) << @as(c_int, 1);
pub const BPF_F_TEST_RND_HI32 = @as(c_uint, 1) << @as(c_int, 2);
pub const BPF_F_TEST_STATE_FREQ = @as(c_uint, 1) << @as(c_int, 3);
pub const BPF_F_SLEEPABLE = @as(c_uint, 1) << @as(c_int, 4);
pub const BPF_F_XDP_HAS_FRAGS = @as(c_uint, 1) << @as(c_int, 5);
pub const BPF_F_XDP_DEV_BOUND_ONLY = @as(c_uint, 1) << @as(c_int, 6);
pub const BPF_F_KPROBE_MULTI_RETURN = @as(c_uint, 1) << @as(c_int, 0);
pub const BPF_PSEUDO_MAP_FD = @as(c_int, 1);
pub const BPF_PSEUDO_MAP_IDX = @as(c_int, 5);
pub const BPF_PSEUDO_MAP_VALUE = @as(c_int, 2);
pub const BPF_PSEUDO_MAP_IDX_VALUE = @as(c_int, 6);
pub const BPF_PSEUDO_BTF_ID = @as(c_int, 3);
pub const BPF_PSEUDO_FUNC = @as(c_int, 4);
pub const BPF_PSEUDO_CALL = @as(c_int, 1);
pub const BPF_PSEUDO_KFUNC_CALL = @as(c_int, 2);
pub const BPF_F_QUERY_EFFECTIVE = @as(c_uint, 1) << @as(c_int, 0);
pub const BPF_F_TEST_RUN_ON_CPU = @as(c_uint, 1) << @as(c_int, 0);
pub const BPF_F_TEST_XDP_LIVE_FRAMES = @as(c_uint, 1) << @as(c_int, 1);
pub const BPF_BUILD_ID_SIZE = @as(c_int, 20);
pub const BPF_OBJ_NAME_LEN = @as(c_uint, 16);
pub const ___BPF_FUNC_MAPPER = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5506:9
pub const __BPF_FUNC_MAPPER_APPLY = @compileError("unable to translate C expr: unexpected token ''");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5724:9
pub inline fn __BPF_FUNC_MAPPER(FN: anytype) @TypeOf(___BPF_FUNC_MAPPER(__BPF_FUNC_MAPPER_APPLY, FN)) {
    _ = &FN;
    return ___BPF_FUNC_MAPPER(__BPF_FUNC_MAPPER_APPLY, FN);
}
pub const __BPF_ENUM_FN = @compileError("unable to translate macro: undefined identifier `BPF_FUNC_`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5730:9
pub inline fn BPF_F_ADJ_ROOM_ENCAP_L2(len: anytype) @TypeOf((@import("std").zig.c_translation.cast(__u64, len) & BPF_ADJ_ROOM_ENCAP_L2_MASK) << BPF_ADJ_ROOM_ENCAP_L2_SHIFT) {
    _ = &len;
    return (@import("std").zig.c_translation.cast(__u64, len) & BPF_ADJ_ROOM_ENCAP_L2_MASK) << BPF_ADJ_ROOM_ENCAP_L2_SHIFT;
}
pub const __bpf_md_ptr = @compileError("unable to translate macro: undefined identifier `aligned`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/any-linux-any/linux/bpf.h:5916:9
pub const XDP_PACKET_HEADROOM = @as(c_int, 256);
pub const BPF_TAG_SIZE = @as(c_int, 8);
pub inline fn BPF_LINE_INFO_LINE_NUM(line_col: anytype) @TypeOf(line_col >> @as(c_int, 10)) {
    _ = &line_col;
    return line_col >> @as(c_int, 10);
}
pub inline fn BPF_LINE_INFO_LINE_COL(line_col: anytype) @TypeOf(line_col & @as(c_int, 0x3ff)) {
    _ = &line_col;
    return line_col & @as(c_int, 0x3ff);
}
pub const __LIBBPF_LIBBPF_COMMON_H = "";
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const __LIBBPF_VERSION_H = "";
pub const LIBBPF_MAJOR_VERSION = @as(c_int, 1);
pub const LIBBPF_MINOR_VERSION = @as(c_int, 3);
pub const LIBBPF_API = @compileError("unable to translate macro: undefined identifier `visibility`");
// /usr/include/bpf/libbpf_common.h:16:9
pub const LIBBPF_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /usr/include/bpf/libbpf_common.h:19:9
pub const LIBBPF_DEPRECATED_SINCE = @compileError("unable to translate macro: undefined identifier `__LIBBPF_MARK_DEPRECATED_`");
// /usr/include/bpf/libbpf_common.h:22:9
pub inline fn __LIBBPF_CURRENT_VERSION_GEQ(major: anytype, minor: anytype) @TypeOf((LIBBPF_MAJOR_VERSION > major) or ((LIBBPF_MAJOR_VERSION == major) and (LIBBPF_MINOR_VERSION >= minor))) {
    _ = &major;
    _ = &minor;
    return (LIBBPF_MAJOR_VERSION > major) or ((LIBBPF_MAJOR_VERSION == major) and (LIBBPF_MINOR_VERSION >= minor));
}
pub inline fn __LIBBPF_MARK_DEPRECATED_1_0(X: anytype) @TypeOf(X) {
    _ = &X;
    return X;
}
pub const ___libbpf_cat = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/bpf/libbpf_common.h:45:9
pub inline fn ___libbpf_select(NAME: anytype, NUM: anytype) @TypeOf(___libbpf_cat(NAME, NUM)) {
    _ = &NAME;
    _ = &NUM;
    return ___libbpf_cat(NAME, NUM);
}
pub const ___libbpf_nth = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/bpf/libbpf_common.h:47:9
pub const ___libbpf_cnt = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/bpf/libbpf_common.h:48:9
pub const ___libbpf_overload = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/bpf/libbpf_common.h:49:9
pub const LIBBPF_OPTS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/bpf/libbpf_common.h:64:9
pub const LIBBPF_OPTS_RESET = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/bpf/libbpf_common.h:80:9
pub const __LIBBPF_LEGACY_BPF_H = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_wchar_t = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const _PTRDIFF_T = "";
pub const _WCHAR_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/include/__stddef_offsetof.h:16:9
pub const DECLARE_LIBBPF_OPTS = LIBBPF_OPTS;
pub const bpf_object_open_opts__last_field = @compileError("unable to translate macro: undefined identifier `kernel_log_level`");
// /usr/include/bpf/libbpf.h:183:9
pub const bpf_object__for_each_program = @compileError("unable to translate C expr: unexpected token 'for'");
// /usr/include/bpf/libbpf.h:297:9
pub const bpf_perf_event_opts__last_field = @compileError("unable to translate macro: undefined identifier `force_ioctl_attach`");
// /usr/include/bpf/libbpf.h:461:9
pub const bpf_kprobe_opts__last_field = @compileError("unable to translate macro: undefined identifier `attach_mode`");
// /usr/include/bpf/libbpf.h:500:9
pub const bpf_kprobe_multi_opts__last_field = @compileError("unable to translate macro: undefined identifier `retprobe`");
// /usr/include/bpf/libbpf.h:526:9
pub const bpf_uprobe_multi_opts__last_field = @compileError("unable to translate macro: undefined identifier `retprobe`");
// /usr/include/bpf/libbpf.h:551:9
pub const bpf_ksyscall_opts__last_field = @compileError("unable to translate macro: undefined identifier `retprobe`");
// /usr/include/bpf/libbpf.h:593:9
pub const bpf_uprobe_opts__last_field = @compileError("unable to translate macro: undefined identifier `attach_mode`");
// /usr/include/bpf/libbpf.h:653:9
pub const bpf_usdt_opts__last_field = @compileError("unable to translate macro: undefined identifier `usdt_cookie`");
// /usr/include/bpf/libbpf.h:702:9
pub const bpf_tracepoint_opts__last_field = @compileError("unable to translate macro: undefined identifier `bpf_cookie`");
// /usr/include/bpf/libbpf.h:732:9
pub const bpf_trace_opts__last_field = @compileError("unable to translate macro: undefined identifier `cookie`");
// /usr/include/bpf/libbpf.h:754:9
pub const bpf_netfilter_opts__last_field = @compileError("unable to translate macro: undefined identifier `flags`");
// /usr/include/bpf/libbpf.h:782:9
pub const bpf_tcx_opts__last_field = @compileError("unable to translate macro: undefined identifier `expected_revision`");
// /usr/include/bpf/libbpf.h:797:9
pub const bpf_netkit_opts__last_field = @compileError("unable to translate macro: undefined identifier `expected_revision`");
// /usr/include/bpf/libbpf.h:812:9
pub const bpf_iter_attach_opts__last_field = @compileError("unable to translate macro: undefined identifier `link_info_len`");
// /usr/include/bpf/libbpf.h:828:9
pub const bpf_object__for_each_map = @compileError("unable to translate C expr: unexpected token 'for'");
// /usr/include/bpf/libbpf.h:913:9
pub const bpf_map__for_each = bpf_object__for_each_map;
pub const bpf_xdp_set_link_opts__last_field = @compileError("unable to translate macro: undefined identifier `old_fd`");
// /usr/include/bpf/libbpf.h:1173:9
pub const bpf_xdp_attach_opts__last_field = @compileError("unable to translate macro: undefined identifier `old_prog_fd`");
// /usr/include/bpf/libbpf.h:1180:9
pub const bpf_xdp_query_opts__last_field = @compileError("unable to translate macro: undefined identifier `xdp_zc_max_segs`");
// /usr/include/bpf/libbpf.h:1193:9
pub inline fn BPF_TC_PARENT(a: anytype, b: anytype) @TypeOf(((a << @as(c_int, 16)) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xFFFF0000, .hex)) | (b & @as(c_uint, 0x0000FFFF))) {
    _ = &a;
    _ = &b;
    return ((a << @as(c_int, 16)) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xFFFF0000, .hex)) | (b & @as(c_uint, 0x0000FFFF));
}
pub const bpf_tc_hook__last_field = @compileError("unable to translate macro: undefined identifier `parent`");
// /usr/include/bpf/libbpf.h:1223:9
pub const bpf_tc_opts__last_field = @compileError("unable to translate macro: undefined identifier `priority`");
// /usr/include/bpf/libbpf.h:1234:9
pub const ring_buffer_opts__last_field = @compileError("unable to translate macro: undefined identifier `sz`");
// /usr/include/bpf/libbpf.h:1256:9
pub const user_ring_buffer_opts__last_field = @compileError("unable to translate macro: undefined identifier `sz`");
// /usr/include/bpf/libbpf.h:1344:9
pub const perf_buffer_opts__last_field = @compileError("unable to translate macro: undefined identifier `sample_period`");
// /usr/include/bpf/libbpf.h:1465:9
pub const perf_buffer_raw_opts__last_field = @compileError("unable to translate macro: undefined identifier `map_keys`");
// /usr/include/bpf/libbpf.h:1509:9
pub const gen_loader_opts__last_field = @compileError("unable to translate macro: undefined identifier `insns_sz`");
// /usr/include/bpf/libbpf.h:1697:9
pub const bpf_linker_opts__last_field = @compileError("unable to translate macro: undefined identifier `sz`");
// /usr/include/bpf/libbpf.h:1711:9
pub const bpf_linker_file_opts__last_field = @compileError("unable to translate macro: undefined identifier `sz`");
// /usr/include/bpf/libbpf.h:1717:9
pub const libbpf_prog_handler_opts__last_field = @compileError("unable to translate macro: undefined identifier `prog_attach_fn`");
// /usr/include/bpf/libbpf.h:1780:9
pub const _LINUX_IF_XDP_H = "";
pub const XDP_SHARED_UMEM = @as(c_int, 1) << @as(c_int, 0);
pub const XDP_COPY = @as(c_int, 1) << @as(c_int, 1);
pub const XDP_ZEROCOPY = @as(c_int, 1) << @as(c_int, 2);
pub const XDP_USE_NEED_WAKEUP = @as(c_int, 1) << @as(c_int, 3);
pub const XDP_UMEM_UNALIGNED_CHUNK_FLAG = @as(c_int, 1) << @as(c_int, 0);
pub const XDP_RING_NEED_WAKEUP = @as(c_int, 1) << @as(c_int, 0);
pub const XDP_MMAP_OFFSETS = @as(c_int, 1);
pub const XDP_RX_RING = @as(c_int, 2);
pub const XDP_TX_RING = @as(c_int, 3);
pub const XDP_UMEM_REG = @as(c_int, 4);
pub const XDP_UMEM_FILL_RING = @as(c_int, 5);
pub const XDP_UMEM_COMPLETION_RING = @as(c_int, 6);
pub const XDP_STATISTICS = @as(c_int, 7);
pub const XDP_OPTIONS = @as(c_int, 8);
pub const XDP_OPTIONS_ZEROCOPY = @as(c_int, 1) << @as(c_int, 0);
pub const XDP_PGOFF_RX_RING = @as(c_int, 0);
pub const XDP_PGOFF_TX_RING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const XDP_UMEM_PGOFF_FILL_RING = @as(c_ulonglong, 0x100000000);
pub const XDP_UMEM_PGOFF_COMPLETION_RING = @as(c_ulonglong, 0x180000000);
pub const XSK_UNALIGNED_BUF_OFFSET_SHIFT = @as(c_int, 48);
pub const XSK_UNALIGNED_BUF_ADDR_MASK = (@as(c_ulonglong, 1) << XSK_UNALIGNED_BUF_OFFSET_SHIFT) - @as(c_int, 1);
pub const XDP_ALWAYS_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/xdp/xsk.h:25:9
pub const DEFINE_XSK_RING = @compileError("unable to translate macro: untranslatable usage of arg `name`");
// /usr/include/xdp/xsk.h:33:9
pub const XSK_RING_CONS__DEFAULT_NUM_DESCS = @as(c_int, 2048);
pub const XSK_RING_PROD__DEFAULT_NUM_DESCS = @as(c_int, 2048);
pub const XSK_UMEM__DEFAULT_FRAME_SHIFT = @as(c_int, 12);
pub const XSK_UMEM__DEFAULT_FRAME_SIZE = @as(c_int, 1) << XSK_UMEM__DEFAULT_FRAME_SHIFT;
pub const XSK_UMEM__DEFAULT_FRAME_HEADROOM = @as(c_int, 0);
pub const XSK_UMEM__DEFAULT_FLAGS = @as(c_int, 0);
pub const XSK_LIBBPF_FLAGS__INHIBIT_PROG_LOAD = @as(c_int, 1) << @as(c_int, 0);
pub const XSK_LIBXDP_FLAGS__INHIBIT_PROG_LOAD = @as(c_int, 1) << @as(c_int, 0);
pub const __LIBXDP_XSK_H = "";
pub const _NET_IF_H = @as(c_int, 1);
pub const _SYS_SOCKET_H = @as(c_int, 1);
pub const __iovec_defined = @as(c_int, 1);
pub const __BITS_SOCKET_H = "";
pub const __socklen_t_defined = "";
pub const PF_UNSPEC = @as(c_int, 0);
pub const PF_LOCAL = @as(c_int, 1);
pub const PF_UNIX = PF_LOCAL;
pub const PF_FILE = PF_LOCAL;
pub const PF_INET = @as(c_int, 2);
pub const PF_AX25 = @as(c_int, 3);
pub const PF_IPX = @as(c_int, 4);
pub const PF_APPLETALK = @as(c_int, 5);
pub const PF_NETROM = @as(c_int, 6);
pub const PF_BRIDGE = @as(c_int, 7);
pub const PF_ATMPVC = @as(c_int, 8);
pub const PF_X25 = @as(c_int, 9);
pub const PF_INET6 = @as(c_int, 10);
pub const PF_ROSE = @as(c_int, 11);
pub const PF_DECnet = @as(c_int, 12);
pub const PF_NETBEUI = @as(c_int, 13);
pub const PF_SECURITY = @as(c_int, 14);
pub const PF_KEY = @as(c_int, 15);
pub const PF_NETLINK = @as(c_int, 16);
pub const PF_ROUTE = PF_NETLINK;
pub const PF_PACKET = @as(c_int, 17);
pub const PF_ASH = @as(c_int, 18);
pub const PF_ECONET = @as(c_int, 19);
pub const PF_ATMSVC = @as(c_int, 20);
pub const PF_RDS = @as(c_int, 21);
pub const PF_SNA = @as(c_int, 22);
pub const PF_IRDA = @as(c_int, 23);
pub const PF_PPPOX = @as(c_int, 24);
pub const PF_WANPIPE = @as(c_int, 25);
pub const PF_LLC = @as(c_int, 26);
pub const PF_IB = @as(c_int, 27);
pub const PF_MPLS = @as(c_int, 28);
pub const PF_CAN = @as(c_int, 29);
pub const PF_TIPC = @as(c_int, 30);
pub const PF_BLUETOOTH = @as(c_int, 31);
pub const PF_IUCV = @as(c_int, 32);
pub const PF_RXRPC = @as(c_int, 33);
pub const PF_ISDN = @as(c_int, 34);
pub const PF_PHONET = @as(c_int, 35);
pub const PF_IEEE802154 = @as(c_int, 36);
pub const PF_CAIF = @as(c_int, 37);
pub const PF_ALG = @as(c_int, 38);
pub const PF_NFC = @as(c_int, 39);
pub const PF_VSOCK = @as(c_int, 40);
pub const PF_KCM = @as(c_int, 41);
pub const PF_QIPCRTR = @as(c_int, 42);
pub const PF_SMC = @as(c_int, 43);
pub const PF_XDP = @as(c_int, 44);
pub const PF_MCTP = @as(c_int, 45);
pub const PF_MAX = @as(c_int, 46);
pub const AF_UNSPEC = PF_UNSPEC;
pub const AF_LOCAL = PF_LOCAL;
pub const AF_UNIX = PF_UNIX;
pub const AF_FILE = PF_FILE;
pub const AF_INET = PF_INET;
pub const AF_AX25 = PF_AX25;
pub const AF_IPX = PF_IPX;
pub const AF_APPLETALK = PF_APPLETALK;
pub const AF_NETROM = PF_NETROM;
pub const AF_BRIDGE = PF_BRIDGE;
pub const AF_ATMPVC = PF_ATMPVC;
pub const AF_X25 = PF_X25;
pub const AF_INET6 = PF_INET6;
pub const AF_ROSE = PF_ROSE;
pub const AF_DECnet = PF_DECnet;
pub const AF_NETBEUI = PF_NETBEUI;
pub const AF_SECURITY = PF_SECURITY;
pub const AF_KEY = PF_KEY;
pub const AF_NETLINK = PF_NETLINK;
pub const AF_ROUTE = PF_ROUTE;
pub const AF_PACKET = PF_PACKET;
pub const AF_ASH = PF_ASH;
pub const AF_ECONET = PF_ECONET;
pub const AF_ATMSVC = PF_ATMSVC;
pub const AF_RDS = PF_RDS;
pub const AF_SNA = PF_SNA;
pub const AF_IRDA = PF_IRDA;
pub const AF_PPPOX = PF_PPPOX;
pub const AF_WANPIPE = PF_WANPIPE;
pub const AF_LLC = PF_LLC;
pub const AF_IB = PF_IB;
pub const AF_MPLS = PF_MPLS;
pub const AF_CAN = PF_CAN;
pub const AF_TIPC = PF_TIPC;
pub const AF_BLUETOOTH = PF_BLUETOOTH;
pub const AF_IUCV = PF_IUCV;
pub const AF_RXRPC = PF_RXRPC;
pub const AF_ISDN = PF_ISDN;
pub const AF_PHONET = PF_PHONET;
pub const AF_IEEE802154 = PF_IEEE802154;
pub const AF_CAIF = PF_CAIF;
pub const AF_ALG = PF_ALG;
pub const AF_NFC = PF_NFC;
pub const AF_VSOCK = PF_VSOCK;
pub const AF_KCM = PF_KCM;
pub const AF_QIPCRTR = PF_QIPCRTR;
pub const AF_SMC = PF_SMC;
pub const AF_XDP = PF_XDP;
pub const AF_MCTP = PF_MCTP;
pub const AF_MAX = PF_MAX;
pub const SOL_RAW = @as(c_int, 255);
pub const SOL_DECNET = @as(c_int, 261);
pub const SOL_X25 = @as(c_int, 262);
pub const SOL_PACKET = @as(c_int, 263);
pub const SOL_ATM = @as(c_int, 264);
pub const SOL_AAL = @as(c_int, 265);
pub const SOL_IRDA = @as(c_int, 266);
pub const SOL_NETBEUI = @as(c_int, 267);
pub const SOL_LLC = @as(c_int, 268);
pub const SOL_DCCP = @as(c_int, 269);
pub const SOL_NETLINK = @as(c_int, 270);
pub const SOL_TIPC = @as(c_int, 271);
pub const SOL_RXRPC = @as(c_int, 272);
pub const SOL_PPPOL2TP = @as(c_int, 273);
pub const SOL_BLUETOOTH = @as(c_int, 274);
pub const SOL_PNPIPE = @as(c_int, 275);
pub const SOL_RDS = @as(c_int, 276);
pub const SOL_IUCV = @as(c_int, 277);
pub const SOL_CAIF = @as(c_int, 278);
pub const SOL_ALG = @as(c_int, 279);
pub const SOL_NFC = @as(c_int, 280);
pub const SOL_KCM = @as(c_int, 281);
pub const SOL_TLS = @as(c_int, 282);
pub const SOL_XDP = @as(c_int, 283);
pub const SOL_MPTCP = @as(c_int, 284);
pub const SOL_MCTP = @as(c_int, 285);
pub const SOL_SMC = @as(c_int, 286);
pub const SOMAXCONN = @as(c_int, 4096);
pub const _BITS_SOCKADDR_H = @as(c_int, 1);
pub const __SOCKADDR_COMMON = @compileError("unable to translate macro: undefined identifier `family`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/bits/sockaddr.h:34:9
pub const __SOCKADDR_COMMON_SIZE = @import("std").zig.c_translation.sizeof(c_ushort);
pub const _SS_SIZE = @as(c_int, 128);
pub const __ss_aligntype = c_ulong;
pub const _SS_PADSIZE = (_SS_SIZE - __SOCKADDR_COMMON_SIZE) - @import("std").zig.c_translation.sizeof(__ss_aligntype);
pub inline fn CMSG_DATA(cmsg: anytype) @TypeOf(cmsg.*.__cmsg_data) {
    _ = &cmsg;
    return cmsg.*.__cmsg_data;
}
pub inline fn CMSG_NXTHDR(mhdr: anytype, cmsg: anytype) @TypeOf(__cmsg_nxthdr(mhdr, cmsg)) {
    _ = &mhdr;
    _ = &cmsg;
    return __cmsg_nxthdr(mhdr, cmsg);
}
pub inline fn CMSG_FIRSTHDR(mhdr: anytype) @TypeOf(if (@import("std").zig.c_translation.cast(usize, mhdr.*.msg_controllen) >= @import("std").zig.c_translation.sizeof(struct_cmsghdr)) @import("std").zig.c_translation.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else @import("std").zig.c_translation.cast([*c]struct_cmsghdr, @as(c_int, 0))) {
    _ = &mhdr;
    return if (@import("std").zig.c_translation.cast(usize, mhdr.*.msg_controllen) >= @import("std").zig.c_translation.sizeof(struct_cmsghdr)) @import("std").zig.c_translation.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else @import("std").zig.c_translation.cast([*c]struct_cmsghdr, @as(c_int, 0));
}
pub inline fn CMSG_ALIGN(len: anytype) @TypeOf(((len + @import("std").zig.c_translation.sizeof(usize)) - @as(c_int, 1)) & @import("std").zig.c_translation.cast(usize, ~(@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1)))) {
    _ = &len;
    return ((len + @import("std").zig.c_translation.sizeof(usize)) - @as(c_int, 1)) & @import("std").zig.c_translation.cast(usize, ~(@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1)));
}
pub inline fn CMSG_SPACE(len: anytype) @TypeOf(CMSG_ALIGN(len) + CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr))) {
    _ = &len;
    return CMSG_ALIGN(len) + CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr));
}
pub inline fn CMSG_LEN(len: anytype) @TypeOf(CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr)) + len) {
    _ = &len;
    return CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr)) + len;
}
pub inline fn __CMSG_PADDING(len: anytype) @TypeOf((@import("std").zig.c_translation.sizeof(usize) - (len & (@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1)))) & (@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1))) {
    _ = &len;
    return (@import("std").zig.c_translation.sizeof(usize) - (len & (@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1)))) & (@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1));
}
pub const _EXTERN_INLINE = __extern_inline;
pub const __ASM_GENERIC_SOCKET_H = "";
pub const __ASM_GENERIC_SOCKIOS_H = "";
pub const FIOSETOWN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8901, .hex);
pub const SIOCSPGRP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8902, .hex);
pub const FIOGETOWN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8903, .hex);
pub const SIOCGPGRP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8904, .hex);
pub const SIOCATMARK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8905, .hex);
pub const SIOCGSTAMP_OLD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8906, .hex);
pub const SIOCGSTAMPNS_OLD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8907, .hex);
pub const SOL_SOCKET = @as(c_int, 1);
pub const SO_DEBUG = @as(c_int, 1);
pub const SO_REUSEADDR = @as(c_int, 2);
pub const SO_TYPE = @as(c_int, 3);
pub const SO_ERROR = @as(c_int, 4);
pub const SO_DONTROUTE = @as(c_int, 5);
pub const SO_BROADCAST = @as(c_int, 6);
pub const SO_SNDBUF = @as(c_int, 7);
pub const SO_RCVBUF = @as(c_int, 8);
pub const SO_SNDBUFFORCE = @as(c_int, 32);
pub const SO_RCVBUFFORCE = @as(c_int, 33);
pub const SO_KEEPALIVE = @as(c_int, 9);
pub const SO_OOBINLINE = @as(c_int, 10);
pub const SO_NO_CHECK = @as(c_int, 11);
pub const SO_PRIORITY = @as(c_int, 12);
pub const SO_LINGER = @as(c_int, 13);
pub const SO_BSDCOMPAT = @as(c_int, 14);
pub const SO_REUSEPORT = @as(c_int, 15);
pub const SO_PASSCRED = @as(c_int, 16);
pub const SO_PEERCRED = @as(c_int, 17);
pub const SO_RCVLOWAT = @as(c_int, 18);
pub const SO_SNDLOWAT = @as(c_int, 19);
pub const SO_RCVTIMEO_OLD = @as(c_int, 20);
pub const SO_SNDTIMEO_OLD = @as(c_int, 21);
pub const SO_SECURITY_AUTHENTICATION = @as(c_int, 22);
pub const SO_SECURITY_ENCRYPTION_TRANSPORT = @as(c_int, 23);
pub const SO_SECURITY_ENCRYPTION_NETWORK = @as(c_int, 24);
pub const SO_BINDTODEVICE = @as(c_int, 25);
pub const SO_ATTACH_FILTER = @as(c_int, 26);
pub const SO_DETACH_FILTER = @as(c_int, 27);
pub const SO_GET_FILTER = SO_ATTACH_FILTER;
pub const SO_PEERNAME = @as(c_int, 28);
pub const SO_ACCEPTCONN = @as(c_int, 30);
pub const SO_PEERSEC = @as(c_int, 31);
pub const SO_PASSSEC = @as(c_int, 34);
pub const SO_MARK = @as(c_int, 36);
pub const SO_PROTOCOL = @as(c_int, 38);
pub const SO_DOMAIN = @as(c_int, 39);
pub const SO_RXQ_OVFL = @as(c_int, 40);
pub const SO_WIFI_STATUS = @as(c_int, 41);
pub const SCM_WIFI_STATUS = SO_WIFI_STATUS;
pub const SO_PEEK_OFF = @as(c_int, 42);
pub const SO_NOFCS = @as(c_int, 43);
pub const SO_LOCK_FILTER = @as(c_int, 44);
pub const SO_SELECT_ERR_QUEUE = @as(c_int, 45);
pub const SO_BUSY_POLL = @as(c_int, 46);
pub const SO_MAX_PACING_RATE = @as(c_int, 47);
pub const SO_BPF_EXTENSIONS = @as(c_int, 48);
pub const SO_INCOMING_CPU = @as(c_int, 49);
pub const SO_ATTACH_BPF = @as(c_int, 50);
pub const SO_DETACH_BPF = SO_DETACH_FILTER;
pub const SO_ATTACH_REUSEPORT_CBPF = @as(c_int, 51);
pub const SO_ATTACH_REUSEPORT_EBPF = @as(c_int, 52);
pub const SO_CNX_ADVICE = @as(c_int, 53);
pub const SCM_TIMESTAMPING_OPT_STATS = @as(c_int, 54);
pub const SO_MEMINFO = @as(c_int, 55);
pub const SO_INCOMING_NAPI_ID = @as(c_int, 56);
pub const SO_COOKIE = @as(c_int, 57);
pub const SCM_TIMESTAMPING_PKTINFO = @as(c_int, 58);
pub const SO_PEERGROUPS = @as(c_int, 59);
pub const SO_ZEROCOPY = @as(c_int, 60);
pub const SO_TXTIME = @as(c_int, 61);
pub const SCM_TXTIME = SO_TXTIME;
pub const SO_BINDTOIFINDEX = @as(c_int, 62);
pub const SO_TIMESTAMP_OLD = @as(c_int, 29);
pub const SO_TIMESTAMPNS_OLD = @as(c_int, 35);
pub const SO_TIMESTAMPING_OLD = @as(c_int, 37);
pub const SO_TIMESTAMP_NEW = @as(c_int, 63);
pub const SO_TIMESTAMPNS_NEW = @as(c_int, 64);
pub const SO_TIMESTAMPING_NEW = @as(c_int, 65);
pub const SO_RCVTIMEO_NEW = @as(c_int, 66);
pub const SO_SNDTIMEO_NEW = @as(c_int, 67);
pub const SO_DETACH_REUSEPORT_BPF = @as(c_int, 68);
pub const SO_PREFER_BUSY_POLL = @as(c_int, 69);
pub const SO_BUSY_POLL_BUDGET = @as(c_int, 70);
pub const SO_NETNS_COOKIE = @as(c_int, 71);
pub const SO_BUF_LOCK = @as(c_int, 72);
pub const SO_RESERVE_MEM = @as(c_int, 73);
pub const SO_TXREHASH = @as(c_int, 74);
pub const SO_RCVMARK = @as(c_int, 75);
pub const SO_TIMESTAMP = SO_TIMESTAMP_OLD;
pub const SO_TIMESTAMPNS = SO_TIMESTAMPNS_OLD;
pub const SO_TIMESTAMPING = SO_TIMESTAMPING_OLD;
pub const SO_RCVTIMEO = SO_RCVTIMEO_OLD;
pub const SO_SNDTIMEO = SO_SNDTIMEO_OLD;
pub const SCM_TIMESTAMP = SO_TIMESTAMP;
pub const SCM_TIMESTAMPNS = SO_TIMESTAMPNS;
pub const SCM_TIMESTAMPING = SO_TIMESTAMPING;
pub const __osockaddr_defined = @as(c_int, 1);
pub const __SOCKADDR_ARG = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/socket.h:58:10
pub const __CONST_SOCKADDR_ARG = @compileError("unable to translate C expr: unexpected token 'const'");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/sys/socket.h:59:10
pub const IF_NAMESIZE = @as(c_int, 16);
pub const ifa_broadaddr = @compileError("unable to translate macro: undefined identifier `ifa_ifu`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:100:10
pub const ifa_dstaddr = @compileError("unable to translate macro: undefined identifier `ifa_ifu`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:101:10
pub const IFHWADDRLEN = @as(c_int, 6);
pub const IFNAMSIZ = IF_NAMESIZE;
pub const ifr_name = @compileError("unable to translate macro: undefined identifier `ifr_ifrn`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:151:10
pub const ifr_hwaddr = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:152:10
pub const ifr_addr = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:153:10
pub const ifr_dstaddr = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:154:10
pub const ifr_broadaddr = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:155:10
pub const ifr_netmask = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:156:10
pub const ifr_flags = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:157:10
pub const ifr_metric = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:158:10
pub const ifr_mtu = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:159:10
pub const ifr_map = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:160:10
pub const ifr_slave = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:161:10
pub const ifr_data = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:162:10
pub const ifr_ifindex = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:163:10
pub const ifr_bandwidth = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:164:10
pub const ifr_qlen = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:165:10
pub const ifr_newname = @compileError("unable to translate macro: undefined identifier `ifr_ifru`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:166:10
pub const _IOT_ifreq = @compileError("unable to translate macro: undefined identifier `_IOT`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:167:10
pub const _IOT_ifreq_short = @compileError("unable to translate macro: undefined identifier `_IOT`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:168:10
pub const _IOT_ifreq_int = @compileError("unable to translate macro: undefined identifier `_IOT`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:169:10
pub const ifc_buf = @compileError("unable to translate macro: undefined identifier `ifc_ifcu`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:185:10
pub const ifc_req = @compileError("unable to translate macro: undefined identifier `ifc_ifcu`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:186:10
pub const _IOT_ifconf = @compileError("unable to translate macro: undefined identifier `_IOT`");
// /home/putin/zig-linux-x86_64-0.13.0/lib/libc/include/generic-glibc/net/if.h:187:10
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const _IO_cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const bpf_insn = struct_bpf_insn;
pub const bpf_lpm_trie_key = struct_bpf_lpm_trie_key;
pub const bpf_cgroup_storage_key = struct_bpf_cgroup_storage_key;
pub const bpf_cgroup_iter_order = enum_bpf_cgroup_iter_order;
pub const bpf_iter_link_info = union_bpf_iter_link_info;
pub const bpf_cmd = enum_bpf_cmd;
pub const bpf_map_type = enum_bpf_map_type;
pub const bpf_prog_type = enum_bpf_prog_type;
pub const bpf_attach_type = enum_bpf_attach_type;
pub const bpf_link_type = enum_bpf_link_type;
pub const bpf_stats_type = enum_bpf_stats_type;
pub const bpf_stack_build_id_status = enum_bpf_stack_build_id_status;
pub const bpf_stack_build_id = struct_bpf_stack_build_id;
pub const bpf_attr = union_bpf_attr;
pub const bpf_func_id = enum_bpf_func_id;
pub const bpf_adj_room_mode = enum_bpf_adj_room_mode;
pub const bpf_hdr_start_off = enum_bpf_hdr_start_off;
pub const bpf_lwt_encap_mode = enum_bpf_lwt_encap_mode;
pub const bpf_flow_keys = struct_bpf_flow_keys;
pub const bpf_sock = struct_bpf_sock;
pub const __sk_buff = struct___sk_buff;
pub const bpf_tunnel_key = struct_bpf_tunnel_key;
pub const bpf_xfrm_state = struct_bpf_xfrm_state;
pub const bpf_ret_code = enum_bpf_ret_code;
pub const bpf_tcp_sock = struct_bpf_tcp_sock;
pub const bpf_sock_tuple = struct_bpf_sock_tuple;
pub const bpf_xdp_sock = struct_bpf_xdp_sock;
pub const xdp_action = enum_xdp_action;
pub const xdp_md = struct_xdp_md;
pub const bpf_devmap_val = struct_bpf_devmap_val;
pub const bpf_cpumap_val = struct_bpf_cpumap_val;
pub const sk_action = enum_sk_action;
pub const sk_msg_md = struct_sk_msg_md;
pub const sk_reuseport_md = struct_sk_reuseport_md;
pub const bpf_prog_info = struct_bpf_prog_info;
pub const bpf_map_info = struct_bpf_map_info;
pub const bpf_btf_info = struct_bpf_btf_info;
pub const bpf_link_info = struct_bpf_link_info;
pub const bpf_sock_addr = struct_bpf_sock_addr;
pub const bpf_sock_ops = struct_bpf_sock_ops;
pub const bpf_perf_event_value = struct_bpf_perf_event_value;
pub const bpf_cgroup_dev_ctx = struct_bpf_cgroup_dev_ctx;
pub const bpf_raw_tracepoint_args = struct_bpf_raw_tracepoint_args;
pub const bpf_fib_lookup = struct_bpf_fib_lookup;
pub const bpf_redir_neigh = struct_bpf_redir_neigh;
pub const bpf_check_mtu_flags = enum_bpf_check_mtu_flags;
pub const bpf_check_mtu_ret = enum_bpf_check_mtu_ret;
pub const bpf_task_fd_type = enum_bpf_task_fd_type;
pub const bpf_func_info = struct_bpf_func_info;
pub const bpf_line_info = struct_bpf_line_info;
pub const bpf_spin_lock = struct_bpf_spin_lock;
pub const bpf_timer = struct_bpf_timer;
pub const bpf_dynptr = struct_bpf_dynptr;
pub const bpf_list_head = struct_bpf_list_head;
pub const bpf_list_node = struct_bpf_list_node;
pub const bpf_rb_root = struct_bpf_rb_root;
pub const bpf_rb_node = struct_bpf_rb_node;
pub const bpf_sysctl = struct_bpf_sysctl;
pub const bpf_sockopt = struct_bpf_sockopt;
pub const bpf_pidns_info = struct_bpf_pidns_info;
pub const bpf_sk_lookup = struct_bpf_sk_lookup;
pub const btf_ptr = struct_btf_ptr;
pub const bpf_core_relo_kind = enum_bpf_core_relo_kind;
pub const bpf_core_relo = struct_bpf_core_relo;
pub const __locale_struct = struct___locale_struct;
pub const libbpf_strict_mode = enum_libbpf_strict_mode;
pub const bpf_program = struct_bpf_program;
pub const bpf_map = struct_bpf_map;
pub const btf = struct_btf;
pub const btf_ext = struct_btf_ext;
pub const libbpf_errno = enum_libbpf_errno;
pub const libbpf_print_level = enum_libbpf_print_level;
pub const bpf_object = struct_bpf_object;
pub const bpf_object_open_opts = struct_bpf_object_open_opts;
pub const bpf_link = struct_bpf_link;
pub const bpf_perf_event_opts = struct_bpf_perf_event_opts;
pub const probe_attach_mode = enum_probe_attach_mode;
pub const bpf_kprobe_opts = struct_bpf_kprobe_opts;
pub const bpf_kprobe_multi_opts = struct_bpf_kprobe_multi_opts;
pub const bpf_uprobe_multi_opts = struct_bpf_uprobe_multi_opts;
pub const bpf_ksyscall_opts = struct_bpf_ksyscall_opts;
pub const bpf_uprobe_opts = struct_bpf_uprobe_opts;
pub const bpf_usdt_opts = struct_bpf_usdt_opts;
pub const bpf_tracepoint_opts = struct_bpf_tracepoint_opts;
pub const bpf_trace_opts = struct_bpf_trace_opts;
pub const bpf_netfilter_opts = struct_bpf_netfilter_opts;
pub const bpf_tcx_opts = struct_bpf_tcx_opts;
pub const bpf_netkit_opts = struct_bpf_netkit_opts;
pub const bpf_iter_attach_opts = struct_bpf_iter_attach_opts;
pub const bpf_xdp_set_link_opts = struct_bpf_xdp_set_link_opts;
pub const bpf_xdp_attach_opts = struct_bpf_xdp_attach_opts;
pub const bpf_xdp_query_opts = struct_bpf_xdp_query_opts;
pub const bpf_tc_attach_point = enum_bpf_tc_attach_point;
pub const bpf_tc_flags = enum_bpf_tc_flags;
pub const bpf_tc_hook = struct_bpf_tc_hook;
pub const bpf_tc_opts = struct_bpf_tc_opts;
pub const ring_buffer = struct_ring_buffer;
pub const ring = struct_ring;
pub const user_ring_buffer = struct_user_ring_buffer;
pub const ring_buffer_opts = struct_ring_buffer_opts;
pub const user_ring_buffer_opts = struct_user_ring_buffer_opts;
pub const perf_buffer = struct_perf_buffer;
pub const perf_buffer_opts = struct_perf_buffer_opts;
pub const bpf_perf_event_ret = enum_bpf_perf_event_ret;
pub const perf_event_header = struct_perf_event_header;
pub const perf_buffer_raw_opts = struct_perf_buffer_raw_opts;
pub const perf_event_attr = struct_perf_event_attr;
pub const bpf_prog_linfo = struct_bpf_prog_linfo;
pub const bpf_map_skeleton = struct_bpf_map_skeleton;
pub const bpf_prog_skeleton = struct_bpf_prog_skeleton;
pub const bpf_object_skeleton = struct_bpf_object_skeleton;
pub const bpf_var_skeleton = struct_bpf_var_skeleton;
pub const bpf_object_subskeleton = struct_bpf_object_subskeleton;
pub const gen_loader_opts = struct_gen_loader_opts;
pub const libbpf_tristate = enum_libbpf_tristate;
pub const bpf_linker_opts = struct_bpf_linker_opts;
pub const bpf_linker_file_opts = struct_bpf_linker_file_opts;
pub const bpf_linker = struct_bpf_linker;
pub const bpf_prog_load_opts = struct_bpf_prog_load_opts;
pub const libbpf_prog_handler_opts = struct_libbpf_prog_handler_opts;
pub const sockaddr_xdp = struct_sockaddr_xdp;
pub const xdp_ring_offset = struct_xdp_ring_offset;
pub const xdp_mmap_offsets = struct_xdp_mmap_offsets;
pub const xdp_umem_reg = struct_xdp_umem_reg;
pub const xdp_statistics = struct_xdp_statistics;
pub const xdp_options = struct_xdp_options;
pub const xdp_desc = struct_xdp_desc;
pub const xsk_ring_prod = struct_xsk_ring_prod;
pub const xsk_ring_cons = struct_xsk_ring_cons;
pub const xsk_umem = struct_xsk_umem;
pub const xsk_socket = struct_xsk_socket;
pub const xsk_umem_config = struct_xsk_umem_config;
pub const xsk_socket_config = struct_xsk_socket_config;
pub const iovec = struct_iovec;
pub const __socket_type = enum___socket_type;
pub const sockaddr = struct_sockaddr;
pub const sockaddr_storage = struct_sockaddr_storage;
pub const msghdr = struct_msghdr;
pub const cmsghdr = struct_cmsghdr;
pub const linger = struct_linger;
pub const osockaddr = struct_osockaddr;
pub const ifaddr = struct_ifaddr;
pub const ifmap = struct_ifmap;
pub const ifreq = struct_ifreq;
pub const ifconf = struct_ifconf;
