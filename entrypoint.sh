#!/bin/sh

set -e

sh -c "curl -s https://github.com/cc332030/linux/raw/master/script/init-ssh/init-ssh-pre.sh | sudo sh -s -- $*"
sh -c "curl -s https://github.com/cc332030/linux/raw/master/script/init-ssh/init-ssh.sh | sh -s -- $*"

sh -c "curl -s https://github.com/cc332030/hugo/raw/master/script/hugo-build.sh | sh -s -- $*"

if [ -n "$COMMAND" ]
then
  ${COMMAND} || true
fi
