#!/bin/bash

set -euo pipefail

clang_path="$PWD/external/emscripten_clang"
#We choose a WORKSPACE because it's a file that must be present
#and we take it's containing directory path
clang_path=`readlink -f $clang_path/WORKSPACE`
clang_path=${clang_path%"/WORKSPACE"}
external_path=${clang_path%"/emscripten_clang"}

EM_CONFIG="LLVM_ROOT='$clang_path';"

EM_CONFIG+="EMSCRIPTEN_NATIVE_OPTIMIZER='$clang_path/optimizer';"
EM_CONFIG+="BINARYEN_ROOT='$clang_path/binaryen';"
EM_CONFIG+="NODE_JS='$external_path/nodejs/bin/nodejs/bin/node';"
EM_CONFIG+="SPIDERMONKEY_ENGINE='';"
EM_CONFIG+="V8_ENGINE='';"
EM_CONFIG+="TEMP_DIR='tmp';"
EM_CONFIG+="COMPILER_ENGINE=NODE_JS;"
EM_CONFIG+="JS_ENGINES=[NODE_JS];"
export EM_CONFIG

export EM_EXCLUSIVE_CACHE_ACCESS=1
export EMCC_SKIP_SANITY_CHECK=1
export EMCC_WASM_BACKEND=0
# # export EM_CACHE="$(dirname ${0})/emscripten_cache"