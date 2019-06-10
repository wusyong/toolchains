#!/bin/bash

set -euo pipefail

source $(dirname $0)/emenv.sh

argv=("$@")

tarfile=
# Find the -o option, and strip the .tar from it.
for (( i=0; i<$#; i++ )); do
  if [[ "x${argv[i]}" == x-o ]]; then
    arg=${argv[$((i+1))]}
    if [[ "x$arg" == x*.tar ]];then
        tarfile=$(basename "$arg")
        emfile="$(dirname "$arg")/$(basename $arg .tar)"
        basearg="$(basename "$(basename "$(basename "$emfile" .js)" .html)" .wasm)"
        baseout="$(dirname "$arg")/$basearg"
        argv[$((i+1))]="$emfile"
    fi
  fi
done


python external/emscripten_toolchain/emcc.py "${argv[@]}"


# Now create the tarfile
shopt -s extglob
if [ "x$tarfile" != x ]; then
  outdir="$(dirname "$baseout")"
  outbase="$(basename "$baseout")"
  (
      cd "$outdir";
      sources="$outbase."?(html|js|wasm|mem|data|worker.js)
      tar cvf $tarfile $sources
  )
fi
