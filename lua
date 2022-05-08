#!/usr/bin/env bash

name=lua
url="https://www.lua.org/ftp/lua-5.4.4.tar.gz"
archive_format=gz

. ./make-steps

package-configure() {
  :
}

package-install(){
  rm -rf "$install_dir"
  make INSTALL_TOP="$install_dir" install -j"$(nproc)"
}

. ./invoke-build
