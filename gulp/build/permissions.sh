#!/bin/sh
set -eux

addgroup -g 82 gulp
adduser -u 82 --system -G gulp gulp

mkdir -p /home/gulp
chown -R gulp:gulp /home/gulp
chmod -R 755 /home/gulp
chown -R gulp:gulp /usr/local/lib/node_modules

mkdir -p /code
chown -R root:gulp /code
chmod -R 775 /code
