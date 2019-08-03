#!/bin/sh
set -eux

addgroup -g 82 gulp
adduser -u 82 --system -G gulp gulp

chown -R root:gulp /usr/local/lib/node_modules

mkdir -p /code
chown -R root:gulp /code
chmod -R 775 /code
