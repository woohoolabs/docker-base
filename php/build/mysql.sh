#!/usr/bin/env bash
set -e

apt-key adv --no-tty --keyserver pgp.mit.edu --recv-keys 5072E1F5

cat > /etc/apt/sources.list.d/mysql.list <<EOF
deb http://repo.mysql.com/apt/debian/ stretch mysql-8.0
EOF

apt-get update
apt-get -y install mysql-client
