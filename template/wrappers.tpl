#!/bin/bash --norc

exec -a ${tool_wrapper} \
    external/${toolchain_id}/bin/${tool_wrapper} \
    "$$@"
