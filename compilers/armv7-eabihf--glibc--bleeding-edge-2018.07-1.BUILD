package(default_visibility = ['//visibility:public'])

filegroup(
  name = 'gcc',
  srcs = [
    'bin/arm-linux-gcc',
  ],
)

filegroup(
  name = 'ar',
  srcs = [
    'bin/arm-linux-ar',
  ],
)

filegroup(
  name = 'ld',
  srcs = [
    'bin/arm-linux-ld',
  ],
)

filegroup(
  name = 'nm',
  srcs = [
    'bin/arm-linux-nm',
  ],
)

filegroup(
  name = 'objcopy',
  srcs = [
    'bin/arm-linux-objcopy',
  ],
)

filegroup(
  name = 'objdump',
  srcs = [
    'bin/arm-linux-objdump',
  ],
)

filegroup(
  name = 'strip',
  srcs = [
    'bin/arm-linux-strip',
  ],
)

filegroup(
  name = 'as',
  srcs = [
    'bin/arm-linux-as',
  ],
)

filegroup(
  name = 'compiler_pieces',
  srcs = glob([
    'arm-buildroot-linux-gnueabihf/**',
    'libexec/**',
    'lib/gcc/arm-buildroot-linux-gnueabihf/**',
    'include/**',
  ]),
)

filegroup(
  name = 'compiler_components',
  srcs = [
    ':gcc',
    ':ar',
    ':ld',
    ':nm',
    ':objcopy',
    ':objdump',
    ':strip',
    ':as',
  ],
)

