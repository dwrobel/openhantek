#!/bin/bash

mkdir -p build
pushd build
    cmake \
        -DOpenGL_GL_PREFERENCE=GLVND \
        -DCMAKE_BUILD_TYPE=Debug \
        -DCMAKE_CXX_FLAGS_DEBUG="-O0 -g3" -DCMAKE_C_FLAGS_DEBUG="-O0 -g3" ..
    time make -j$(nproc) VERBOSE=1 && echo "ok"
popd
