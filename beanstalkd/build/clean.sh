#!/usr/bin/env bash

apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/www/*

mkdir /code
chmod -R 755 /code
