package(default_visibility = ["//visibility:public"])

cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
        "i686|gcc": "bootlin-i686",
        "i686": "bootlin-i686",
    },
)

filegroup(
    name = "linux_all_files",
    srcs = [
        "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:tool-wrappers",
        "@bootlin_i686_toolchain//:compiler_pieces",
    ],
)

filegroup(
    name = "linux_linker_files",
    srcs = [
        "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:ar",
        "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:gcc",
        "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:ld",
        "@bootlin_i686_toolchain//:compiler_pieces",
    ],
)

filegroup(
    name = "linux_compiler_files",
    srcs = [
        "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:as",
        "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:gcc",
        "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:ld",
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
    name = "bootlin-i686",
    all_files = ":linux_all_files",
    ar_files = "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:ar",
    as_files = "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:as",
    compiler_files = ":linux_compiler_files",
    cpu = "i686",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":linux_linker_files",
    objcopy_files = "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:objcopy",
    static_runtime_libs = [":empty"],
    strip_files = "//tools/x86-i686--glibc--bleeding-edge-2018.07-1/i686-linux:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)

