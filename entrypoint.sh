#!/bin/sh

set -e

parameter=$*

c_sh(){
  sh -c "curl -sL $1 | sh -s -- $parameter"
}

c_sh https://github.com/cc332030/linux/raw/master/script/init-ssh/init-ssh-pre.sh
c_sh https://github.com/cc332030/linux/raw/master/script/init-ssh/init-ssh.sh

c_sh https://github.com/cc332030/hugo/raw/master/script/hugo-build.sh

if [ -n "$COMMAND" ]
then
  ${COMMAND} || true
fi
