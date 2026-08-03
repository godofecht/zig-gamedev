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
    zmesh: {
        path: "../../zig-pkg/zmesh-0.11.0-dev-oO3A5lKRCgCGK8Krro4Rj_F_MhO8LT487re5u_DNIzvl"
    }
    znoise: {
        path: "../../zig-pkg/znoise-0.3.0-dev-gK1op9ikAQDrS4G22GluyaQaabjGzhdnhV2QyCoLE8z7"
    }
    zgui: {
        path: "../../zig-pkg/zgui-0.6.0-dev--L6sZKkSbgCUBXLVfwJDPpMkETz7ll-mmQYQae-nMxjt"
    }
    zgpu: {
        path: "../../zig-pkg/zgpu-0.12.0-dev-UxK2DAfAzgAdcCqFsXIj2RZRQFuLFhzr9C-s91Hm0U0q"
    }
    dawn_aarch64_macos: {
        url: "https://github.com/michal-z/webgpu_dawn-aarch64-macos/archive/d2360cdfff0cf4a780cb77aa47c57aca03cc6dfe.tar.gz"
        hash: "N-V-__8AALVIRAIf5nfpx8-4mEo2RGsynVryPQPcHk95qFM5"
        lazy: true
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
    }, {
        alias: "zmesh"
        package: "zmesh"
        module: "root"
    }, {
        alias: "znoise"
        package: "znoise"
        module: "root"
    }, {
        alias: "zgui"
        package: "zgui"
        module: "root"
        backend: "glfw_wgpu"
    }, {
        alias: "zgpu"
        package: "zgpu"
        module: "root"
    }]
    pkg_artifacts: [{
        package: "zglfw"
        artifact: "glfw"
        pass_optimize: false
    }, {
        package: "zmesh"
        artifact: "zmesh"
    }, {
        package: "znoise"
        artifact: "FastNoiseLite"
    }, {
        package: "zgui"
        artifact: "imgui"
        backend: "glfw_wgpu"
    }, {
        package: "zgpu"
        artifact: "zdawn"
    }]
    pkg_library_paths: [{
        package: "dawn_aarch64_macos"
        os: "macos"
        arch: "aarch64"
    }]
    native: {
        system_libs: ["dawn"]
    }
    install_dirs: [{
        source_dir: "../../samples/sdl2_demo/sdl2_demo_content"
        install_dir: "bin"
        install_subdir: "sdl2_demo_content"
    }]
}
