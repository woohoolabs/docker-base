#!/usr/bin/env bash

apt-get -y install libcurl4-gnutls-dev zlib1g-dev libicu-dev libbz2-dev g++ && \
docker-php-ext-configure intl && \
docker-php-ext-install bcmath bz2 curl gettext intl json mbstring mysqli opcache pdo_mysql
