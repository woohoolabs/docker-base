#!/usr/bin/env bash
set -e

wget https://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg

apt-key adv --keyserver pgp.mit.edu --recv-keys 5072E1F5

cat > /etc/apt/sources.list.d/mysql.list <<EOF
deb http://repo.mysql.com/apt/debian/ stretch mysql-5.7
EOF

apt-get update
apt-get -y install mysql-client
