#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer \
    --version=1.0.0 && \
composer global require hirak/prestissimo
