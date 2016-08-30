#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

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
