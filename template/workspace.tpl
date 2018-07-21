new_http_archive(
  name = '${toolchain_id}',
  build_file = 'compilers/${strip_perfix}.BUILD',
  url = '${tarball_url}',
  strip_prefix = '${strip_perfix}',
)