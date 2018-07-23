def setup_toolchains():
    # aarch64
    native.new_http_archive(
        name="bootlin_aarch64_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/aarch64/tarballs/aarch64--glibc--bleeding-edge-2018.07-1.tar.bz2",
        sha256=
        "958ff195a79554144f25d1299fc6f8e5c3c35d060dec79baa99b898b8b00f10a",
        strip_prefix="aarch64--glibc--bleeding-edge-2018.07-1",
        build_file="@iota_toolchains//:compilers/aarch64--glibc--bleeding-edge-2018.07-1.BUILD", )
    # armv7
    native.new_http_archive(
        name="bootlin_arm_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/armv7-eabihf/tarballs/armv7-eabihf--glibc--bleeding-edge-2018.07-1.tar.bz2",
        sha256=
        "d884e7459c6d64cf108c94b1fbd7924e10703ad5837831c3c88a3eabefc6c8da",
        strip_prefix="armv7-eabihf--glibc--bleeding-edge-2018.07-1",
        build_file="@iota_toolchains//:compilers/armv7-eabihf--glibc--bleeding-edge-2018.07-1.BUILD", )
    # i686
    native.new_http_archive(
        name="bootlin_i686_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/x86-i686/tarballs/x86-i686--glibc--bleeding-edge-2018.07-1.tar.bz2",
        sha256=
        "5ec38774469cadadfffac47392eab084f893be6a7c84fad76b371159879be74e",
        strip_prefix="x86-i686--glibc--bleeding-edge-2018.07-1",
        build_file="@iota_toolchains//:compilers/x86-i686--glibc--bleeding-edge-2018.07-1.BUILD", )
    # x86_64
    native.new_http_archive(
        name="bootlin_x86_64_toolchain",
        url=
        "https://toolchains.bootlin.com/downloads/releases/toolchains/x86-64-core-i7/tarballs/x86-64-core-i7--glibc--bleeding-edge-2018.07-1.tar.bz2",
        sha256=
        "9bc9e7e87494f29da123889666119ba3bcdf00b1804d500ec2643f7920ac1cd5",
        strip_prefix="x86-64-core-i7--glibc--bleeding-edge-2018.07-1",
        build_file="@iota_toolchains//:compilers/x86-64-core-i7--glibc--bleeding-edge-2018.07-1.BUILD", )
