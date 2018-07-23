package(default_visibility = ['//visibility:public'])

filegroup(
  name = 'gcc',
  srcs = [
    'bin/i686-linux-gcc',
  ],
)

filegroup(
  name = 'ar',
  srcs = [
    'bin/i686-linux-ar',
  ],
)

filegroup(
  name = 'ld',
  srcs = [
    'bin/i686-linux-ld',
  ],
)

filegroup(
  name = 'nm',
  srcs = [
    'bin/i686-linux-nm',
  ],
)

filegroup(
  name = 'objcopy',
  srcs = [
    'bin/i686-linux-objcopy',
  ],
)

filegroup(
  name = 'objdump',
  srcs = [
    'bin/i686-linux-objdump',
  ],
)

filegroup(
  name = 'strip',
  srcs = [
    'bin/i686-linux-strip',
  ],
)

filegroup(
  name = 'as',
  srcs = [
    'bin/i686-linux-as',
  ],
)

filegroup(
  name = 'compiler_pieces',
  srcs = glob([
    'i686-buildroot-linux-gnu/**',
    'libexec/**',
    'lib/gcc/i686-buildroot-linux-gnu/**',
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

