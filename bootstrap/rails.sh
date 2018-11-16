#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m gem install rails                 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
gem install rails

# デバッグを終了する
set +x