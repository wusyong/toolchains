load("//tools/emscripten:defs.bzl", "emcc_binary")

cc_binary(
    name = "hello",
    srcs = ["hello.c"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "hi",
    srcs = ["hi.c"],
    hdrs = ["hi.h"],
    #    includes = [".",],
    visibility = ["//visibility:public"],
)

emcc_binary(
    name = "hi.js",
    srcs = [
        "hi.c",
        "hi.h",
    ],
    #List of functions you would like to be able to wrap/cal from JS
    #Please note that function name should be prefixed with _
    linkopts = ["-s EXPORTED_FUNCTIONS='[\"_hi\"]'"],

    #to export all
    #linkopts = ["-s LINKABLE=1 -s EXPORT_ALL=1"],
)
