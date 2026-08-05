// Azazel parity model for zig-gamedev. The fork moved its former in-tree libs
// (zmath etc.) out to separate dependency repos, so beyond the local
// zvectormath static slice the next target is zmath itself, consumed as a
// package. A small probe exe imports the zmath package (module "root") and
// exercises a few SIMD ops, proving Azazel models zig-gamedev's pure-Zig math
// library through pkg_imports. Lane 0.16. zvectormath is kept.
package build

toolchain: zig: {
	lanes: ["0.16"]
	preferred: "0.16"
}

packages: {
	zmath: {}
}

zvectormath: #Module & {
	kind: "static"
	root: "samples/common/src/vectormath.zig"
}

zmath_probe: #Module & {
	kind: "exe"
	root: "samples/common/src/zmath_probe.zig"
	pkg_imports: [
		{alias: "zmath", package: "zmath", module: "root"},
	]
}
