#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m Java                              \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo yum -y install java-1.8.0-openjdk-devel

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m Go                                \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo yum install -y golang

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m Scala                             \e[m'
echo -e $'\e[1;31m ================================= \e[m'
curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo
sudo yum install -y sbt

# デバッグを終了する
set +x