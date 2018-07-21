cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
        "armeabi-v7a|gcc": "bootlin-armeabi-v7a",
    },
)

filegroup(
    name = "linux_all_files",
    srcs = [
        "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:tool-wrappers",
        "@bootlin_arm_toolchain//:compiler_pieces",
    ],
)

filegroup(
    name = "linux_linker_files",
    srcs = [
        "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:ar",
        "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:gcc",
        "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:ld",
        "@bootlin_arm_toolchain//:compiler_pieces",
    ],
)

filegroup(
    name = "linux_compiler_files",
    srcs = [
        "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:as",
        "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:gcc",
        "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:ld",
    ],
)

# Here we'll keep things simple by including all files ditributed in archives.
filegroup(
    name = "all",
    srcs = glob(["**/*"]),
)

filegroup(
    name = "empty",
    srcs = [],
)

cc_toolchain(
    name = "bootlin-armeabi-v7a",
    all_files = ":linux_all_files",
    ar_files = "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:ar",
    as_files = "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:as",
    compiler_files = ":linux_compiler_files",
    cpu = "armeabi-v7a",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":linux_linker_files",
    objcopy_files = "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:objcopy",
    static_runtime_libs = [":empty"],
    strip_files = "//tools/armv7-eabihf--glibc--stable-2018.02-2/arm-linux:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)

