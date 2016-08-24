#!/usr/bin/env bash
set -e

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/www/*

mkdir /code
chmod -R 755 /code
