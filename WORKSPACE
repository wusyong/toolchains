workspace(name = "iota_toolchains")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

#emscripten deps
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "1db950bbd27fb2581866e307c0130983471d4c3cd49c46063a2503ca7b6770a4",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/0.29.0/rules_nodejs-0.29.0.tar.gz"],
)

load("@iota_toolchains//:defs.bzl", "load_repositoreis")

load_repositoreis()
