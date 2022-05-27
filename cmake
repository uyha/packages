#!/usr/bin/env bash

name=cmake
url="https://github.com/Kitware/CMake/releases/download/v3.23.1/cmake-3.23.1.tar.gz"
archive_format=gz

. ./make-steps

package-configure() {
  ./bootstrap \
    --prefix="$install_dir" \
    --parallel="$(nproc)"
}

. ./invoke-build
