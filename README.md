# IOTA toolchains 

x86_64 cross compile
```
bazel build --config=x86_64 //tests:hello
```

ARMv8 cross compile
```
bazel build --config=aarch64 //tests:hello
```

# Genrate a New toolchain  

Add toolchain info to `config.yaml`  

```
aarch64:
  cpu_type: "aarch64"
  tarball_url: "https://toolchains.bootlin.com/downloads/releases/toolchains/aarch64/tarballs/aarch64--glibc--stable-2018.02-2.tar.bz2"
  tool_perfix: "aarch64-linux"
  strip_perfix: "aarch64--glibc--stable-2018.02-2"
  buildroot_dir: "aarch64-buildroot-linux-gnu"
  toolchain_id: "bootlin_aarch64_toolchain"
  glibc_version: "glibc_2.26.144"
```

Run script  

```
./bootlin2bazel.py aarch64
```

