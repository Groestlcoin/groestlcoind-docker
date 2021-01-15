#!/bin/sh

apt-get update
apt-get install curl jq wget -y
baseURL="https://github.com/Groestlcoin/groestlcoin/releases/download/"
tag1=$(curl https://api.github.com/repos/groestlcoin/groestlcoin/releases/latest | jq '.tag_name' | tr -d '"')
tag2=$(curl https://api.github.com/repos/groestlcoin/groestlcoin/releases/latest | jq '.tag_name' | tr -d '"','v')
file="$baseURL$tag1/groestlcoin-$tag2-$(uname -m)-linux-gnu.tar.gz"

cd /root
wget $file
tar xzf groestlcoin*
install -m 0755 -o root -g root -t /usr/local/bin groestlcoin-$tag/bin/*
rm -r *
