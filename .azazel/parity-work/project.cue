package build

toolchain: zig: {
    lanes: ["0.15"]
    preferred: "0.15"
}

packages: {
    zmath: {
        path: "../../zig-pkg/zmath-0.11.0-dev-wjwivdMsAwD-xaLj76YHUq3t9JDH-X16xuMTmnDzqbu2"
    }
    zglfw: {
        path: "../../zig-pkg/zglfw-0.10.0-dev-zgVDNIG4IQBWN_sfMD-xfC9bJS2hbBN2W7jNlDLovcdC"
    }
    zopengl: {
        path: "../../zig-pkg/zopengl-0.6.0-dev-5-tnz36mDgBuU9pDfag6_B-qCWOJQc5GXiXuZ6z41zQM"
    }
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
    pkg_imports: [{
        alias: "zmath"
        package: "zmath"
        module: "root"
    }, {
        alias: "zglfw"
        package: "zglfw"
        module: "root"
        pass_optimize: false
    }, {
        alias: "zopengl"
        package: "zopengl"
        module: "root"
        pass_optimize: false
    }]
    pkg_artifacts: [{
        package: "zglfw"
        artifact: "glfw"
        pass_optimize: false
    }]
}
