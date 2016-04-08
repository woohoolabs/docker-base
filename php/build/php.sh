#!/usr/bin/env bash
set -e

apt-get -y install libcurl4-gnutls-dev zlib1g-dev libicu-dev libbz2-dev g++
docker-php-ext-configure intl
docker-php-ext-install bcmath bz2 curl gettext intl json mbstring opcache pdo_mysql

git clone https://github.com/phpredis/phpredis.git
cd phpredis
git checkout php7
phpize
./configure
make && make install
cd ..
rm -rf phpredis
