package(default_visibility = ["//tools/x86-i686--glibc--bleeding-edge-2018.07-1:__pkg__"])

filegroup(
    name = "gcc",
    srcs = [
        "i686-linux-gcc",
        "@bootlin_i686_toolchain//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "i686-linux-ar",
        "@bootlin_i686_toolchain//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "i686-linux-ld",
        "@bootlin_i686_toolchain//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "i686-linux-nm",
        "@bootlin_i686_toolchain//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "i686-linux-objcopy",
        "@bootlin_i686_toolchain//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "i686-linux-objdump",
        "@bootlin_i686_toolchain//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "i686-linux-strip",
        "@bootlin_i686_toolchain//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "i686-linux-as",
        "@bootlin_i686_toolchain//:as",
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
