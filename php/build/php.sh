#!/usr/bin/env bash

docker-php-ext-install bcmath gettext json mbstring mysqli opcache pdo_mysql && \
apt-get -y install zlib1g-dev libicu-dev g++ && \
docker-php-ext-configure intl && \
docker-php-ext-install intl
