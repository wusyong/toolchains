load("//:toolchains.bzl", "setup_toolchains")
load("//:nodejs.bzl", "load_nodejs")

def setup_toolchains_repositories():
    setup_toolchains()
    load_nodejs()
