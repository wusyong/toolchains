workspace(name = "iota_toolchains")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive") 

http_archive(
  name = 'bootlin_aarch64_toolchain',
  build_file = 'compilers/aarch64--glibc--bleeding-edge-2018.07-1.BUILD',
  url = 'https://toolchains.bootlin.com/downloads/releases/toolchains/aarch64/tarballs/aarch64--glibc--bleeding-edge-2018.07-1.tar.bz2',
  strip_prefix = 'aarch64--glibc--bleeding-edge-2018.07-1',
)

http_archive(
  name = 'bootlin_arm_toolchain',
  build_file = 'compilers/armv7-eabihf--glibc--bleeding-edge-2018.07-1.BUILD',
  url = 'https://toolchains.bootlin.com/downloads/releases/toolchains/armv7-eabihf/tarballs/armv7-eabihf--glibc--bleeding-edge-2018.07-1.tar.bz2',
  strip_prefix = 'armv7-eabihf--glibc--bleeding-edge-2018.07-1',
)

http_archive(
  name = 'bootlin_i686_toolchain',
  build_file = 'compilers/x86-i686--glibc--bleeding-edge-2018.07-1.BUILD',
  url = 'https://toolchains.bootlin.com/downloads/releases/toolchains/x86-i686/tarballs/x86-i686--glibc--bleeding-edge-2018.07-1.tar.bz2',
  strip_prefix = 'x86-i686--glibc--bleeding-edge-2018.07-1',
)

http_archive(
  name = 'bootlin_x86_64_toolchain',
  build_file = 'compilers/x86-64-core-i7--glibc--bleeding-edge-2018.07-1.BUILD',
  url = 'https://toolchains.bootlin.com/downloads/releases/toolchains/x86-64-core-i7/tarballs/x86-64-core-i7--glibc--bleeding-edge-2018.07-1.tar.bz2',
  strip_prefix = 'x86-64-core-i7--glibc--bleeding-edge-2018.07-1',
)

http_archive(
  name = 'xtensa_esp32_elf_linux64',
  build_file = 'compilers/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.BUILD',
  url = 'https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz',
  strip_prefix = 'xtensa-esp32-elf',
)
