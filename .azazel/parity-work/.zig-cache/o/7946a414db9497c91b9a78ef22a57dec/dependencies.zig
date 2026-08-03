pub const packages = struct {
    pub const @"../../../../azazel-zig-gamedev-pkgs/zmath-3a5955b" = struct {
        pub const build_root = "/private/tmp/azazel-huge-forks-10/zig-gamedev/.azazel/parity-work/../../../../azazel-zig-gamedev-pkgs/zmath-3a5955b";
        pub const build_zig = @import("../../../../azazel-zig-gamedev-pkgs/zmath-3a5955b");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "zmath", "../../../../azazel-zig-gamedev-pkgs/zmath-3a5955b" },
};
