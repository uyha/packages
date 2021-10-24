#!/usr/bin/env bash

name=perl
url='https://www.cpan.org/src/5.0/perl-5.34.0.tar.gz'
archive_format=gz

. ./make-steps

package-configure(){
  ./Configure -de -Dprefix="$install_dir"
}

. ./invoke-build
