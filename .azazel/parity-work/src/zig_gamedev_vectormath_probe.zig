const vectormath = @import("zig_gamedev_vectormath");
const zmath = @import("zmath");
const zglfw = @import("zglfw");
const zopengl = @import("zopengl");
const zmesh = @import("zmesh");
const znoise = @import("znoise");
const zgui = @import("zgui");

pub fn main() void {
    const a = vectormath.Vec3.init(1.0, 2.0, 3.0);
    const b = vectormath.Vec3.init(4.0, 5.0, 6.0);
    const dot = vectormath.Vec3.dot(a, b);
    if (dot != 32.0) @panic("unexpected vectormath result");
    _ = vectormath.Mat4.initTranslation(a);
    _ = zmath.translation(1.0, 2.0, 3.0);
    _ = zglfw.Window;
    _ = zopengl.Extension.KHR_debug;
    _ = zmesh.io;
    _ = znoise.FnlGenerator;
    _ = zgui.backend;
    _ = zgui.DrawVert;
}
