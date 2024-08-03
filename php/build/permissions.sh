#!/bin/sh
set -eux

function set_permissions_recursive() {
    mkdir -p $1
    chown -R www-data:root $1
    chmod -R 775 $1
}

function set_permissions() {
    mkdir -p $1
    chown www-data:root $1
    chmod 775 $1
}

set_permissions_recursive /usr/local/bin
set_permissions_recursive /usr/local/etc
set_permissions_recursive /usr/local/lib/php
set_permissions /etc/
set_permissions_recursive /cache
set_permissions_recursive /code
set_permissions_recursive /composer
