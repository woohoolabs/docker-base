#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer \
    --version=1.1.1
composer global require hirak/prestissimo
