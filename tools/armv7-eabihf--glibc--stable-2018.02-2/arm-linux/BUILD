package(default_visibility = ["//tools/armv7-eabihf--glibc--stable-2018.02-2:__pkg__"])

filegroup(
    name = "gcc",
    srcs = [
        "arm-linux-gcc",
        "@bootlin_arm_toolchain//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "arm-linux-ar",
        "@bootlin_arm_toolchain//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "arm-linux-ld",
        "@bootlin_arm_toolchain//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "arm-linux-nm",
        "@bootlin_arm_toolchain//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "arm-linux-objcopy",
        "@bootlin_arm_toolchain//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "arm-linux-objdump",
        "@bootlin_arm_toolchain//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "arm-linux-strip",
        "@bootlin_arm_toolchain//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "arm-linux-as",
        "@bootlin_arm_toolchain//:as",
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
