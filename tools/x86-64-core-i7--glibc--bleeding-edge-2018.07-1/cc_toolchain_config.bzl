load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
    "action_config",
    "artifact_name_pattern",
    "env_entry",
    "env_set",
    "feature",
    "feature_set",
    "flag_group",
    "flag_set",
    "make_variable",
    "tool",
    "tool_path",
    "variable_with_value",
    "with_feature_set",
)
load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")

def _impl(ctx):
    toolchain_identifier = "bootlin_x86_64_toolchain"

    host_system_name = "local"

    target_system_name = "x86_64"

    target_cpu = "x86_64"

    target_libc = "glibc_2.27.57"

    compiler = "gcc"

    abi_version = "gcc"

    abi_libc_version = "glibc_2.27.57"

    cc_target_os = None

    builtin_sysroot = None

    all_compile_actions = [
        ACTION_NAMES.c_compile,
        ACTION_NAMES.cpp_compile,
        ACTION_NAMES.linkstamp_compile,
        ACTION_NAMES.assemble,
        ACTION_NAMES.preprocess_assemble,
        ACTION_NAMES.cpp_header_parsing,
        ACTION_NAMES.cpp_module_compile,
        ACTION_NAMES.cpp_module_codegen,
        ACTION_NAMES.clif_match,
        ACTION_NAMES.lto_backend,
    ]

    all_cpp_compile_actions = [
        ACTION_NAMES.cpp_compile,
        ACTION_NAMES.linkstamp_compile,
        ACTION_NAMES.cpp_header_parsing,
        ACTION_NAMES.cpp_module_compile,
        ACTION_NAMES.cpp_module_codegen,
        ACTION_NAMES.clif_match,
    ]

    preprocessor_compile_actions = [
        ACTION_NAMES.c_compile,
        ACTION_NAMES.cpp_compile,
        ACTION_NAMES.linkstamp_compile,
        ACTION_NAMES.preprocess_assemble,
        ACTION_NAMES.cpp_header_parsing,
        ACTION_NAMES.cpp_module_compile,
        ACTION_NAMES.clif_match,
    ]

    codegen_compile_actions = [
        ACTION_NAMES.c_compile,
        ACTION_NAMES.cpp_compile,
        ACTION_NAMES.linkstamp_compile,
        ACTION_NAMES.assemble,
        ACTION_NAMES.preprocess_assemble,
        ACTION_NAMES.cpp_module_codegen,
        ACTION_NAMES.lto_backend,
    ]

    all_link_actions = [
        ACTION_NAMES.cpp_link_executable,
        ACTION_NAMES.cpp_link_dynamic_library,
        ACTION_NAMES.cpp_link_nodeps_dynamic_library,
    ]

    objcopy_embed_data_action = action_config(
        action_name = "objcopy_embed_data",
        enabled = True,
        tools = [tool(path = "x86_64-linux/x86_64-linux-objcopy")],
    )

    action_configs = [objcopy_embed_data_action]

    default_link_flags_feature = feature(
        name = "default_link_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = all_link_actions,
                flag_groups = [
                    flag_group(
                        flags = [
                            "--sysroot=external/bootlin_x86_64_toolchain/x86_64-buildroot-linux-gnu/sysroot",
                            "-Bexternal/bootlin_x86_64_toolchain/x86_64-buildroot-linux-gnu/bin",
                            "-lstdc++",
                            "-lm",
                            "-lpthread",
                            "-no-canonical-prefixes",
                            "-pie",
                            "-Wl,-z,relro,-z,now",
                        ],
                    ),
                ],
            ),
        ],
    )

    supports_pic_feature = feature(name = "supports_pic", enabled = True)

    objcopy_embed_flags_feature = feature(
        name = "objcopy_embed_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = ["objcopy_embed_data"],
                flag_groups = [flag_group(flags = ["-I", "binary"])],
            ),
        ],
    )

    user_compile_flags_feature = feature(
        name = "user_compile_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    ACTION_NAMES.assemble,
                    ACTION_NAMES.preprocess_assemble,
                    ACTION_NAMES.linkstamp_compile,
                    ACTION_NAMES.c_compile,
                    ACTION_NAMES.cpp_compile,
                    ACTION_NAMES.cpp_header_parsing,
                    ACTION_NAMES.cpp_module_compile,
                    ACTION_NAMES.cpp_module_codegen,
                    ACTION_NAMES.lto_backend,
                    ACTION_NAMES.clif_match,
                ],
                flag_groups = [
                    flag_group(
                        flags = ["%{user_compile_flags}"],
                        iterate_over = "user_compile_flags",
                        expand_if_available = "user_compile_flags",
                    ),
                ],
            ),
        ],
    )

    sysroot_feature = feature(
        name = "sysroot",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    ACTION_NAMES.preprocess_assemble,
                    ACTION_NAMES.linkstamp_compile,
                    ACTION_NAMES.c_compile,
                    ACTION_NAMES.cpp_compile,
                    ACTION_NAMES.cpp_header_parsing,
                    ACTION_NAMES.cpp_module_compile,
                    ACTION_NAMES.cpp_module_codegen,
                    ACTION_NAMES.lto_backend,
                    ACTION_NAMES.clif_match,
                    ACTION_NAMES.cpp_link_executable,
                    ACTION_NAMES.cpp_link_dynamic_library,
                    ACTION_NAMES.cpp_link_nodeps_dynamic_library,
                ],
                flag_groups = [
                    flag_group(
                        flags = ["--sysroot=%{sysroot}"],
                        expand_if_available = "sysroot",
                    ),
                ],
            ),
        ],
    )

    unfiltered_compile_flags_feature = feature(
        name = "unfiltered_compile_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    ACTION_NAMES.assemble,
                    ACTION_NAMES.preprocess_assemble,
                    ACTION_NAMES.linkstamp_compile,
                    ACTION_NAMES.c_compile,
                    ACTION_NAMES.cpp_compile,
                    ACTION_NAMES.cpp_header_parsing,
                    ACTION_NAMES.cpp_module_compile,
                    ACTION_NAMES.cpp_module_codegen,
                    ACTION_NAMES.lto_backend,
                    ACTION_NAMES.clif_match,
                ],
                flag_groups = [
                    flag_group(
                        flags = [
                            "-no-canonical-prefixes",
                            "-Wno-builtin-macro-redefined",
                            "-D__DATE__=\"redacted\"",
                            "-D__TIMESTAMP__=\"redacted\"",
                            "-D__TIME__=\"redacted\"",
                        ],
                    ),
                ],
            ),
        ],
    )

    default_compile_flags_feature = feature(
        name = "default_compile_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    ACTION_NAMES.assemble,
                    ACTION_NAMES.preprocess_assemble,
                    ACTION_NAMES.linkstamp_compile,
                    ACTION_NAMES.c_compile,
                    ACTION_NAMES.cpp_compile,
                    ACTION_NAMES.cpp_header_parsing,
                    ACTION_NAMES.cpp_module_compile,
                    ACTION_NAMES.cpp_module_codegen,
                    ACTION_NAMES.lto_backend,
                    ACTION_NAMES.clif_match,
                ],
                flag_groups = [
                    flag_group(
                        flags = [
                            "-nostdinc",
                            "--sysroot=bootlin_x86_64_toolchain/x86_64-buildroot-linux-gnu/sysroot",
                            "-isystem",
                            "external/bootlin_x86_64_toolchain/x86_64-buildroot-linux-gnu/sysroot/usr/include",
                            "-I",
                            "external/bootlin_x86_64_toolchain/lib/gcc/x86_64-buildroot-linux-gnu/8.1.0/include",
                            "-I",
                            "external/bootlin_x86_64_toolchain/lib/gcc/x86_64-buildroot-linux-gnu/8.1.0/include-fixed",
                            "-I",
                            "external/bootlin_x86_64_toolchain/x86_64-buildroot-linux-gnu/include/c++/8.1.0",
                            "-I",
                            "external/bootlin_x86_64_toolchain/x86_64-buildroot-linux-gnu/include/c++/8.1.0/x86_64-buildroot-linux-gnu",
                            "-U_FORTIFY_SOURCE",
                            "-fstack-protector",
                            "-fPIE",
                            "-fdiagnostics-color=always",
                        ],
                    ),
                ],
            ),
        ],
    )

    features = [
            default_compile_flags_feature,
            default_link_flags_feature,
            supports_pic_feature,
            objcopy_embed_flags_feature,
            user_compile_flags_feature,
            sysroot_feature,
            unfiltered_compile_flags_feature,
        ]

    cxx_builtin_include_directories = []

    artifact_name_patterns = []

    make_variables = []

    tool_paths = [
        tool_path(
            name = "ar",
            path = "x86_64-linux/x86_64-linux-ar",
        ),
        tool_path(
            name = "compat-ld",
            path = "x86_64-linux/x86_64-linux-ld",
        ),
        tool_path(
            name = "cpp",
            path = "x86_64-linux/x86_64-linux-gcc",
        ),
        tool_path(
            name = "dwp",
            path = "x86_64-linux/x86_64-linux-dwp",
        ),
        tool_path(
            name = "gcc",
            path = "x86_64-linux/x86_64-linux-gcc",
        ),
        tool_path(
            name = "gcov",
            path = "x86_64-linux/x86_64-linux-gcov",
        ),
        tool_path(
            name = "ld",
            path = "x86_64-linux/x86_64-linux-ld",
        ),
        tool_path(
            name = "nm",
            path = "x86_64-linux/x86_64-linux-nm",
        ),
        tool_path(
            name = "objcopy",
            path = "x86_64-linux/x86_64-linux-objcopy",
        ),
        tool_path(
            name = "objdump",
            path = "x86_64-linux/x86_64-linux-objdump",
        ),
        tool_path(
            name = "strip",
            path = "x86_64-linux/x86_64-linux-strip",
        ),
    ]


    out = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.write(out, "Fake executable")
    return [
        cc_common.create_cc_toolchain_config_info(
            ctx = ctx,
            features = features,
            action_configs = action_configs,
            artifact_name_patterns = artifact_name_patterns,
            cxx_builtin_include_directories = cxx_builtin_include_directories,
            toolchain_identifier = toolchain_identifier,
            host_system_name = host_system_name,
            target_system_name = target_system_name,
            target_cpu = target_cpu,
            target_libc = target_libc,
            compiler = compiler,
            abi_version = abi_version,
            abi_libc_version = abi_libc_version,
            tool_paths = tool_paths,
            make_variables = make_variables,
            builtin_sysroot = builtin_sysroot,
            cc_target_os = cc_target_os
        ),
        DefaultInfo(
            executable = out,
        ),
    ]
cc_toolchain_config =  rule(
    implementation = _impl,
    attrs = {
        "cpu": attr.string(mandatory=True, values=["x86_64"]),
    },
    provides = [CcToolchainConfigInfo],
    executable = True,
)
