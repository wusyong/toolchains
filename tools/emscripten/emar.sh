#!/bin/bash
set -euo pipefail

source $(dirname $0)/emenv.sh

python3 external/emscripten_toolchain/emar.py "$@"