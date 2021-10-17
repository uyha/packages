#!/usr/bin/env bash

. ./make-steps

url=https://ftp.gnu.org/gnu/m4/m4-latest.tar.xz
install_dir="$1"

. ./invoke-build
