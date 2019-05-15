package(default_visibility = ["//visibility:public"])

cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
        "${cpu_type}|gcc": "bootlin-${cpu_type}",
        "${cpu_type}": "bootlin-${cpu_type}",
    },
)

filegroup(
    name = "linux_all_files",
    srcs = [
        "//tools/${strip_perfix}/${tool_perfix}:tool-wrappers",
        "@${toolchain_id}//:compiler_pieces",
    ],
)

filegroup(
    name = "linux_linker_files",
    srcs = [
        "//tools/${strip_perfix}/${tool_perfix}:ar",
        "//tools/${strip_perfix}/${tool_perfix}:gcc",
        "//tools/${strip_perfix}/${tool_perfix}:ld",
        "@${toolchain_id}//:compiler_pieces",
    ],
)

filegroup(
    name = "linux_compiler_files",
    srcs = [
        "//tools/${strip_perfix}/${tool_perfix}:as",
        "//tools/${strip_perfix}/${tool_perfix}:gcc",
        "//tools/${strip_perfix}/${tool_perfix}:ld",
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
    name = "bootlin-${cpu_type}",
    all_files = ":linux_all_files",
    ar_files = "//tools/${strip_perfix}/${tool_perfix}:ar",
    as_files = "//tools/${strip_perfix}/${tool_perfix}:as",
    compiler_files = ":linux_compiler_files",
    cpu = "${cpu_type}",
    dwp_files = ":empty",
    dynamic_runtime_lib = ":empty",
    linker_files = ":linux_linker_files",
    objcopy_files = "//tools/${strip_perfix}/${tool_perfix}:objcopy",
    static_runtime_lib = ":empty",
    strip_files = "//tools/${strip_perfix}/${tool_perfix}:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)
