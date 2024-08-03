#!/bin/bash
set -eux

function set_permissions_recursive() {
    mkdir -p $1
    chown -R root:www-data $1
    chmod -R 775 $1
}

mkdir -p /code

set_permissions_recursive /usr/local/lib/node_modules
set_permissions_recursive /code
