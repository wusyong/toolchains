def setup_toolchains():
    # aarch64
    native.new_http_archive(
        name="bootlin_aarch64_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/aarch64/tarballs/aarch64--glibc--stable-2018.02-2.tar.bz2",
        sha256=
        "8384146f3e79591f41b32d553fcb518c05667ddcbabe01feb1da4b7350b8f3ff",
        strip_prefix="aarch64--glibc--stable-2018.02-2",
        build_file="@iota_toolchains//:compilers/aarch64--glibc--stable-2018.02-2.BUILD", )
    # armv7
    native.new_http_archive(
        name="bootlin_arm_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/armv7-eabihf/tarballs/armv7-eabihf--glibc--stable-2018.02-2.tar.bz2",
        sha256=
        "32723810be37418bb9e5a7da5bec96719bf0c2eb2b919f85dfd5a02c449a451f",
        strip_prefix="armv7-eabihf--glibc--stable-2018.02-2",
        build_file="@iota_toolchains//:compilers/armv7-eabihf--glibc--stable-2018.02-2.BUILD", )
    # i686
    native.new_http_archive(
        name="bootlin_i686_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/x86-i686/tarballs/x86-i686--glibc--stable-2018.02-2.tar.bz2",
        sha256=
        "d00ef0f101aed2f61f8f81a6ce61f4015c1a8493eaa526857791e90e6bf0173b",
        strip_prefix="x86-i686--glibc--stable-2018.02-2",
        build_file="@iota_toolchains//:compilers/x86-i686--glibc--stable-2018.02-2.BUILD", )
    # x86_64
    native.new_http_archive(
        name="bootlin_x86_64_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/x86-64-core-i7/tarballs/x86-64-core-i7--glibc--stable-2018.02-2.tar.bz2",
        sha256=
        "2e2e60ddf593aaea4dace384b46c1132a66a4e182975194efc02407f8adf75d1",
        strip_prefix="x86-64-core-i7--glibc--stable-2018.02-2",
        build_file="@iota_toolchains//:compilers/x86-64-core-i7--glibc--stable-2018.02-2.BUILD", )
