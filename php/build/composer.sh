#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

mkdir /composer

curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer \
    --version=$COMPOSER_VERSION

composer global require hirak/prestissimo
