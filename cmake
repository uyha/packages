#!/usr/bin/env bash


name=cmake
url=https://github.com/Kitware/CMake/releases/download/v3.22.0/cmake-3.22.0.tar.gz
archive_format=gz

. ./make-steps

package-configure() {
  ./bootstrap \
	  --prefix="$install_dir" \
	  --parallel=$(nproc) \
	  -- -DOPENSSL_ROOT_DIR="$LOCAL_OPT/openssl"
}

. ./invoke-build

