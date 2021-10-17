#!/usr/bin/env bash

. ./make-steps

url=https://github.com/Kitware/CMake/releases/download/v3.22.0-rc1/cmake-3.22.0-rc1.tar.gz
install_dir="$1"
src_dir=$(mktemp -d)

package-configure() {
  ./bootstrap \
	  --prefix="$install_dir" \
	  --parallel=$(nproc) \
	  --sphinx-man \
	  -- -DOPENSSL_ROOT_DIR="$LOCAL_OPT/openssl"
}

package-build() {
  make -j$(nproc)
}

. ./invoke-build

