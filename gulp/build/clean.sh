#!/usr/bin/env bash
set -e

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/www/*

mkdir -p /code
chmod -R 775 /code
