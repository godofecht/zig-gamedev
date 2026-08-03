pub const packages = struct {
    pub const @"../../../../azazel-zig-gamedev-pkgs/zopengl-db9d615" = struct {
        pub const build_root = "/private/tmp/azazel-huge-forks-10/zig-gamedev/.azazel/parity-work/../../../../azazel-zig-gamedev-pkgs/zopengl-db9d615";
        pub const build_zig = @import("../../../../azazel-zig-gamedev-pkgs/zopengl-db9d615");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
    pub const @"../../zig-pkg/zmath-0.11.0-dev-wjwivdMsAwD-xaLj76YHUq3t9JDH-X16xuMTmnDzqbu2" = struct {
        pub const build_root = "/private/tmp/azazel-huge-forks-10/zig-gamedev/.azazel/parity-work/../../zig-pkg/zmath-0.11.0-dev-wjwivdMsAwD-xaLj76YHUq3t9JDH-X16xuMTmnDzqbu2";
        pub const build_zig = @import("../../zig-pkg/zmath-0.11.0-dev-wjwivdMsAwD-xaLj76YHUq3t9JDH-X16xuMTmnDzqbu2");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "zmath", "../../zig-pkg/zmath-0.11.0-dev-wjwivdMsAwD-xaLj76YHUq3t9JDH-X16xuMTmnDzqbu2" },
    .{ "zopengl", "../../../../azazel-zig-gamedev-pkgs/zopengl-db9d615" },
};
