#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/www/*

mkdir /code
chmod -R 755 /code
