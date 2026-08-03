package build

toolchain: zig: {
    lanes: ["0.15"]
    preferred: "0.15"
}

zig_gamedev_vectormath: #Module & {
    kind: "module"
    root: "../../samples/common/src/vectormath.zig"
}

zig_gamedev_vectormath_probe: #Module & {
    kind: "exe"
    root: "src/zig_gamedev_vectormath_probe.zig"
    deps: ["zig_gamedev_vectormath"]
    link: "import"
}
