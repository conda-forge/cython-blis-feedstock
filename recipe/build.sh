#!/usr/bin/env bash

#ln -s `which $CC` $BUILD_PREFIX/bin/gcc
#export CC=$BUILD_PREFIX/bin/gcc
#export BLIS_COMPILER="$CC"
#export BLIS_ARCH="x86_64_no_skx"

if [[ "$(uname)" == "Linux" ]]; then
#    if [[ ${target_platform} =~ .*ppc.* ]] || [[ ${target_platform} =~ .*aarch64.* ]]; then
#        export BLIS_ARCH="generic"
#    fi
    $PYTHON -m pip install . --no-deps -vv --global-option="build_ext" --global-option="-lrt"
else
    $PYTHON -m pip install . --no-deps -vv
fi
