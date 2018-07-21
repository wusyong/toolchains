major_version: "1"
minor_version: "0"
default_target_cpu: "${cpu_type}"

default_toolchain {
  cpu: "${cpu_type}"
  toolchain_identifier: "${toolchain_id}"
}

toolchain {
  abi_version: "gcc"
  abi_libc_version: "${glibc_version}"
  builtin_sysroot: ""
  compiler: "gcc"
  host_system_name: "local"
  needsPic: true
  supports_gold_linker: false
  supports_incremental_linker: false
  supports_fission: false
  supports_interface_shared_objects: false
  supports_normalizing_ar: true
  supports_start_end_lib: false
  supports_thin_archives: true
  target_libc: "${glibc_version}"
  target_cpu: "${cpu_type}"
  target_system_name: "${cpu_type}"
  toolchain_identifier: "${toolchain_id}"

  tool_path { name: "ar" path: "${tool_perfix}/${tool_perfix}-ar" }
  tool_path { name: "compat-ld" path: "${tool_perfix}/${tool_perfix}-ld" }
  tool_path { name: "cpp" path: "${tool_perfix}/${tool_perfix}-gcc" }
  tool_path { name: "dwp" path: "${tool_perfix}/${tool_perfix}-dwp" }
  tool_path { name: "gcc" path: "${tool_perfix}/${tool_perfix}-gcc" }
  tool_path { name: "gcov" path: "${tool_perfix}/${tool_perfix}-gcov" }
  # C(++) compiles invoke the compiler (as that is the one knowing where
  # to find libraries), but we provide LD so other rules can invoke the linker.
  tool_path { name: "ld" path: "${tool_perfix}/${tool_perfix}-ld" }
  tool_path { name: "nm" path: "${tool_perfix}/${tool_perfix}-nm" }
  tool_path { name: "objcopy" path: "${tool_perfix}/${tool_perfix}-objcopy" }
  objcopy_embed_flag: "-I"
  objcopy_embed_flag: "binary"
  tool_path { name: "objdump" path: "${tool_perfix}/${tool_perfix}-objdump" }
  tool_path { name: "strip" path: "${tool_perfix}/${tool_perfix}-strip" }

  compiler_flag: "-nostdinc"
  compiler_flag: "--sysroot=${toolchain_id}/${buildroot_dir}/sysroot"
  compiler_flag: "-isystem"
  compiler_flag: "external/${toolchain_id}/${buildroot_dir}/sysroot/usr/include"
  # https://github.com/OpenLightingProject/ola/issues/1125 use "-I" instead of '-isystem"
  compiler_flag: "-I"
  compiler_flag: "external/${toolchain_id}/lib/gcc/${buildroot_dir}/6.4.0/include"
  compiler_flag: "-I"
  compiler_flag: "external/${toolchain_id}/lib/gcc/${buildroot_dir}/6.4.0/include-fixed"
  compiler_flag: "-I"
  compiler_flag: "external/${toolchain_id}/${buildroot_dir}/include/c++/6.4.0"
  compiler_flag: "-I"
  compiler_flag: "external/${toolchain_id}/${buildroot_dir}/include/c++/6.4.0/${buildroot_dir}"

}
