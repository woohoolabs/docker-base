#!/bin/sh
set -eux

addgroup -g 82 gulp
adduser -u 82 --system -G gulp gulp

chown -R root:root /usr/local/lib/node_modules

mkdir -p /code
chown -R root:root /code
chmod -R 775 /code
