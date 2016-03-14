#!/usr/bin/env bash

apt-get clean
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*
rm -rf /var/tmp/*
rm -rf /var/www/*

mkdir /cache
chown -R root:www-data /cache
chmod -R 775 /cache

mkdir /code
chmod -R 755 /code
