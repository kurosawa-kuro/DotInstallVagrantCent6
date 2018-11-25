#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m update_php                        \e[m'
echo -e $'\e[1;31m ================================= \e[m'
php -v
sudo yum install -y --enablerepo=remi-php71 php
php -v

# デバッグを終了する
set +x