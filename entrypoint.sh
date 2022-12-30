#!/bin/sh

set -e

parameter=$*

curl_sh(){
  sh -c "curl -sL $1 | sh -s -- $parameter"
}

curl_sh https://github.com/cc332030/linux/raw/master/script/init-ssh/init-ssh-pre.sh
curl_sh https://github.com/cc332030/linux/raw/master/script/init-ssh/init-ssh.sh

curl_sh https://github.com/cc332030/hugo/raw/master/script/hugo-build.sh

if [ -n "$REMOTE_PATH" ]
then
  curl_sh https://github.com/cc332030/linux/raw/master/script/deploy/deploy.sh
fi

curl_sh /linux/raw/master/script/init-ssh/init-ssh-clean.sh
