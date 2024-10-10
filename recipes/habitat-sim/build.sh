#!/bin/bash

set -exo pipefail

ls

ls src

ls src/deps

ls src/deps/recastnavigation

export CMAKE_ARGS="\
    -DBUILD_WITH_CUDA=OFF \
    -DBUILD_TEST=OFF \
    -DUSE_SYSTEM_ASSIMP=ON \
    -DUSE_SYSTEM_OPENEXR=ON \
    -DUSE_SYSTEM_EIGEN=ON \
    -DUSE_SYSTEM_GLFW=ON \
    -DUSE_SYSTEM_MAGNUM=ON \
    -DUSE_SYSTEM_PYBIND11=ON \
    -DUSE_SYSTEM_RAPIDJSON=ON \
    -DUSE_SYSTEM_BULLET=ON \
    -DUSE_SYSTEM_ZSTD=ON \
    -DLIB_SUFFIX=''"

python -m pip install . -vv
