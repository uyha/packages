#!/usr/bin/env bash

name=tmux
url='https://github.com/tmux/tmux/releases/download/3.2a/tmux-3.2a.tar.gz'
archive_format=gz
dep=(libncurses-dev libevent-dev)

. ./make-steps
. ./invoke-build
