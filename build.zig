const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const translate_c = b.addTranslateC(.{
        .root_source_file = b.path("src/c_headers.h"),
        .target = target,
        .optimize = optimize,
    });
    translate_c.addSystemIncludePath(.{ .cwd_relative = "/usr/include" });

    const c_mod = translate_c.createModule();

    const mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    mod.addImport("c", c_mod);
    mod.linkSystemLibrary("bpf", .{});
    mod.linkSystemLibrary("xdp", .{});

    const exe = b.addExecutable(.{
        .name = "xdp-sniper",
        .root_module = mod,
    });

    b.installArtifact(exe);

    const scanner_mod = b.createModule(.{
        .root_source_file = b.path("weapon_scanner.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    const scanner = b.addExecutable(.{
        .name = "weapon-scanner",
        .root_module = scanner_mod,
    });
    scanner.linkSystemLibrary("bpf", .{});
    scanner.linkSystemLibrary("xdp", .{});

    b.installArtifact(scanner);

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Chay chuong trinh sniper");
    run_step.dependOn(&run_cmd.step);

    const run_scanner_cmd = b.addRunArtifact(scanner);
    run_scanner_cmd.step.dependOn(b.getInstallStep());

    const run_scanner_step = b.step("run-weapon-scanner", "Chay weapon scanner");
    run_scanner_step.dependOn(&run_scanner_cmd.step);
}
