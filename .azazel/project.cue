// Azazel parity model for zig-gamedev. First target slice: zvectormath, a
// self-contained pure-Zig 3D math library (ported from DirectXMath). It imports
// only std, so Azazel builds it directly as a static library. Note: zig-gamedev
// moved its former in-tree libs (zmath etc.) out to separate dependency repos, so
// this is the remaining self-contained math slice in the working tree. Verified:
// the source compiles as a static lib on 0.16.0.
package build

toolchain: zig: {
	lanes: ["0.16"]
	preferred: "0.16"
}

zvectormath: #Module & {
	kind: "static"
	root: "samples/common/src/vectormath.zig"
}
