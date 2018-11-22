#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m update_nodejs           　 　      \e[m'
echo -e $'\e[1;31m ================================= \e[m'
./bootstrap/nodejs/update_nodejs.sh

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m db_mongo.sh             　 　      \e[m'
echo -e $'\e[1;31m ================================= \e[m'
./bootstrap/nodejs/db_mongo.sh

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m express.sh              　 　      \e[m'
echo -e $'\e[1;31m ================================= \e[m'
./bootstrap/nodejs/express.sh

# デバッグを終了する
set +x