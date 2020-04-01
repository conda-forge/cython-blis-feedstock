#!/usr/bin/env bash

export BLIS_COMPILER="$CC"
if [[ "$(uname)" == "Linux" ]]; then
    if [[ ${target_platform} =~ .*ppc.* ]] || [[ ${target_platform} =~ .*aarch64.* ]]; then
        export BLIS_ARCH="generic"
    fi
    $PYTHON -m pip install . --no-deps -vv --global-option="build_ext" --global-option="-lrt"
else
    $PYTHON -m pip install . --no-deps -vv
fi
