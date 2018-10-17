package(default_visibility = ["//tools/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0:__pkg__"])

filegroup(
    name = "gcc",
    srcs = [
        "xtensa-esp32-elf-gcc",
        "@xtensa_esp32_elf_linux64//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "xtensa-esp32-elf-ar",
        "@xtensa_esp32_elf_linux64//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "xtensa-esp32-elf-ld",
        "@xtensa_esp32_elf_linux64//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "xtensa-esp32-elf-nm",
        "@xtensa_esp32_elf_linux64//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "xtensa-esp32-elf-objcopy",
        "@xtensa_esp32_elf_linux64//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "xtensa-esp32-elf-objdump",
        "@xtensa_esp32_elf_linux64//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "xtensa-esp32-elf-strip",
        "@xtensa_esp32_elf_linux64//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "xtensa-esp32-elf-as",
        "@xtensa_esp32_elf_linux64//:as",
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
