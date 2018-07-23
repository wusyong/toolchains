package(default_visibility = ["//tools/x86-64-core-i7--glibc--bleeding-edge-2018.07-1:__pkg__"])

filegroup(
    name = "gcc",
    srcs = [
        "x86_64-linux-gcc",
        "@bootlin_x86_64_toolchain//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "x86_64-linux-ar",
        "@bootlin_x86_64_toolchain//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "x86_64-linux-ld",
        "@bootlin_x86_64_toolchain//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "x86_64-linux-nm",
        "@bootlin_x86_64_toolchain//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "x86_64-linux-objcopy",
        "@bootlin_x86_64_toolchain//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "x86_64-linux-objdump",
        "@bootlin_x86_64_toolchain//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "x86_64-linux-strip",
        "@bootlin_x86_64_toolchain//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "x86_64-linux-as",
        "@bootlin_x86_64_toolchain//:as",
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
