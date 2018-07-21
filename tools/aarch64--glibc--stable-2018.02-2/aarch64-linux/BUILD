package(default_visibility = ["//tools/aarch64--glibc--stable-2018.02-2:__pkg__"])

filegroup(
    name = "gcc",
    srcs = [
        "aarch64-linux-gcc",
        "@bootlin_aarch64_toolchain//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "aarch64-linux-ar",
        "@bootlin_aarch64_toolchain//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "aarch64-linux-ld",
        "@bootlin_aarch64_toolchain//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "aarch64-linux-nm",
        "@bootlin_aarch64_toolchain//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "aarch64-linux-objcopy",
        "@bootlin_aarch64_toolchain//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "aarch64-linux-objdump",
        "@bootlin_aarch64_toolchain//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "aarch64-linux-strip",
        "@bootlin_aarch64_toolchain//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "aarch64-linux-as",
        "@bootlin_aarch64_toolchain//:as",
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
