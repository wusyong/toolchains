package(default_visibility = ["//tools/${strip_perfix}:__pkg__"])

filegroup(
    name = "gcc",
    srcs = [
        "${tool_perfix}-gcc",
        "@${toolchain_id}//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "${tool_perfix}-ar",
        "@${toolchain_id}//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "${tool_perfix}-ld",
        "@${toolchain_id}//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "${tool_perfix}-nm",
        "@${toolchain_id}//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "${tool_perfix}-objcopy",
        "@${toolchain_id}//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "${tool_perfix}-objdump",
        "@${toolchain_id}//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "${tool_perfix}-strip",
        "@${toolchain_id}//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "${tool_perfix}-as",
        "@${toolchain_id}//:as",
    ],
)

filegroup(
    name = "tool-wrappers",
    srcs = [
        ":ar",
        ":as",
        ":gcc",
        ":ld",
        ":nm",
        ":objcopy",
        ":objdump",
        ":strip",
    ],
)
