load("//:toolchains.bzl", "setup_toolchains")
load("//:nodejs.bzl", "load_nodejs")

def load_repositoreis():
    setup_toolchains()
    load_nodejs()
