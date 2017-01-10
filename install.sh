#!/bin/sh

## @file
## Installs pldiff
##
## Usage:
## @code
## sh install.sh
## which pldiff
## man pldiff
## @endcode

# Allow user to specify a different install location.
if [[ -n $1 ]]; then
  option=$1
else
  echo 'Optionally specify a custom install location: [ENTER to use default /usr/local]'
  read option
fi

PREFIX=${option:-/usr/local}

mkdir -p $PREFIX/bin || (mkdir $PREFIX; mkdir $PREFIX/bin)
cp pldiff > $PREFIX/bin/pldiff
chmod +x $PREFIX/bin/pldiff

mkdir -p $PREFIX/man/man1 || ($mkdir $PREFIX; mkdir $PREFIX/man; mkdir $PREFIX/man/man1)
cp pldiff.1 > $PREFIX/man/man1/pldiff.1
