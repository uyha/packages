#!/usr/bin/env bash

set -euo pipefail

prefix="$1"

url=https://ftp.gnu.org/gnu/m4/m4-latest.tar.xz

package-fetch() {
  local url="$1"

  local temp_file=$(mktemp)
  local temp_dir=$(mktemp -d)

  wget -O "$temp_file" "$url" 1>/dev/null
  tar -xf "$temp_file" -C "$temp_dir" --strip-components=1 1>/dev/null

  echo "$temp_dir"
}

package-configure() {
  local src_dir="$1"
  local prefix="$2"

  cd "$src_dir"
  ./configure --prefix="$prefix"
}

package-build() {
  local src_dir="$1"
  
  cd "$src_dir"
  make -j$(nproc)
}

package-install(){
  local src_dir="$1"

  cd "$src_dir"
  make install -j$(nproc)
}

src_dir=$(package-fetch "$url")
package-configure "$src_dir" "$prefix"
package-build "$src_dir"
package-install "$src_dir"

