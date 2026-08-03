const vectormath = @import("zig_gamedev_vectormath");

pub fn main() void {
    const a = vectormath.Vec3.init(1.0, 2.0, 3.0);
    const b = vectormath.Vec3.init(4.0, 5.0, 6.0);
    const dot = vectormath.Vec3.dot(a, b);
    if (dot != 32.0) @panic("unexpected vectormath result");
    _ = vectormath.Mat4.initTranslation(a);
}
