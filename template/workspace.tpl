load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive") 

http_archive(
  name = '${toolchain_id}',
  build_file = 'compilers/${strip_perfix}.BUILD',
  url = '${tarball_url}',
  strip_prefix = '${strip_perfix}',
)
