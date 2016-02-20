#!/usr/bin/env bash

apt-get -y install libcurl4-gnutls-dev zlib1g-dev libicu-dev g++ && \
docker-php-ext-install bcmath curl gettext json mbstring mysqli opcache pdo_mysql && \
docker-php-ext-configure intl && \
docker-php-ext-install intl
