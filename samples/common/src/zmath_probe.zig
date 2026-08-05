//! Azazel parity probe: builds against the external zmath package (module
//! "root") to prove Azazel can model zig-gamedev's pure-Zig math library as a
//! pkg_import. Since the fork moved zmath out of the tree into a dependency,
//! there is no local root to build as a static lib; this probe imports the
//! package and exercises a few SIMD ops so zmath actually compiles.
const std = @import("std");
const zm = @import("zmath");

pub fn main() void {
    const a = zm.f32x4(1.0, 2.0, 3.0, 4.0);
    const b = zm.f32x4(5.0, 6.0, 7.0, 8.0);
    const d = zm.dot4(a, b);
    std.mem.doNotOptimizeAway(d);
}
