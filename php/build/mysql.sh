#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

wget https://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg

apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
cat > /etc/apt/sources.list.d/mysql.list <<EOF
deb http://repo.mysql.com/apt/debian/ jessie mysql-5.7
EOF

apt-get update

apt-get -y --force-yes install mysql-client
