#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m ruby                              \e[m'
echo -e $'\e[1;31m ================================= \e[m'
cd ~/.rbenv
git pull origin master
cd ~/.rbenv/plugins/ruby-build 
git pull origin master
rbenv install 2.4.1
rbenv global 2.4.1
rbenv rehash
ruby -v

# デバッグを終了する
set +x