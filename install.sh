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

cp -r * $PREFIX
chmod a+x $PREFIX/bin/pldiff
chmod a+r $PREFIX/share/man/man1/pldiff.1
