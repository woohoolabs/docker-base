#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get clean
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*
rm -rf /var/tmp/*
rm -rf /var/www/*

function set_permissions() {
    mkdir -p $1
    chown -R www-data:root $1
    chmod -R 775 $1
}

set_permissions /usr/local/bin
set_permissions /usr/local/etc
set_permissions /usr/local/lib/php
set_permissions /etc
set_permissions /cache
set_permissions /code
set_permissions /composer
