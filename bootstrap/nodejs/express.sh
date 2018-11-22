#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m express                 　 　      \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo npm install express -g

npm ls -g | grep express

# デバッグを終了する
set +x