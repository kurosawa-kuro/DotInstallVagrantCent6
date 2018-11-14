#!/bin/bash

# デバッグを開始する
# set -x

sudo yum -y update
sudo yum -y install git

git clone https://github.com/dotinstallres/centos6.git

cd centos6

./run.sh

exec $SHELL -l

# デバッグを終了する
set +x