#!/usr/bin/env bash
set -e

userdel -r www-data
groupadd -g 33 gulp
useradd -u 33 -d /home/gulp -g gulp gulp

mkdir -p /home/gulp
chown -R gulp:gulp /home/gulp
chmod -R 755 /home/gulp
chown -R gulp:gulp /usr/local/lib/node_modules

mkdir -p /code
chown -R root:gulp /code
chmod -R 775 /code
