#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m nodejs                  　 　      \e[m'
echo -e $'\e[1;31m ================================= \e[m'
node -v

curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs

ls -la /etc/yum.repos.d/ | grep node
sudo  rm /etc/yum.repos.d/nodesource-el.repo
sudo yum -y remove nodejs
sudo yum clean all

sudo yum -y install nodejs

node -v

# デバッグを終了する
set +x