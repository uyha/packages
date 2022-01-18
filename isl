#!/usr/bin/env bash

name=isl
url='https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.24.tar.bz2'
archive_format=bzip2

. ./make-steps
package-configure() {
  ./configure --prefix="$install_dir" --with-gmp-prefix="$(pkg-config --variable=prefix gmp)" 
}
. ./invoke-build
