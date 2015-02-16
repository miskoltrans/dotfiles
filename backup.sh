#!/bin/sh

# directory where script is stored, taken from
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Using $DIR"

#~/bin contains custom goodies
cp -r ~/bin $DIR
