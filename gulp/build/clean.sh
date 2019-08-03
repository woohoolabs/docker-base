#!/bin/sh
set -eux

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/www/*

mkdir -p /code
chmod -R 775 /code
