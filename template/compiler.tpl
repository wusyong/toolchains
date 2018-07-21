package(default_visibility = ['//visibility:public'])

filegroup(
  name = 'gcc',
  srcs = [
    'bin/${tool_perfix}-gcc',
  ],
)

filegroup(
  name = 'ar',
  srcs = [
    'bin/${tool_perfix}-ar',
  ],
)

filegroup(
  name = 'ld',
  srcs = [
    'bin/${tool_perfix}-ld',
  ],
)

filegroup(
  name = 'nm',
  srcs = [
    'bin/${tool_perfix}-nm',
  ],
)

filegroup(
  name = 'objcopy',
  srcs = [
    'bin/${tool_perfix}-objcopy',
  ],
)

filegroup(
  name = 'objdump',
  srcs = [
    'bin/${tool_perfix}-objdump',
  ],
)

filegroup(
  name = 'strip',
  srcs = [
    'bin/${tool_perfix}-strip',
  ],
)

filegroup(
  name = 'as',
  srcs = [
    'bin/${tool_perfix}-as',
  ],
)

filegroup(
  name = 'compiler_pieces',
  srcs = glob([
    '${buildroot_dir}/**',
    'libexec/**',
    'lib/gcc/${buildroot_dir}/**',
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

