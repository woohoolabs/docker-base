#!/usr/bin/env bash
set -e

apt-get -y install libcurl4-gnutls-dev zlib1g-dev libicu-dev libbz2-dev g++
docker-php-ext-configure intl
docker-php-ext-install bcmath bz2 curl gettext intl json mbstring opcache pdo_mysql

pecl install timezonedb
docker-php-ext-enable timezonedb

pecl install apcu
docker-php-ext-enable apcu

docker-php-source extract
curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/${PHP_REDIS_VERSION}.tar.gz
tar xfz /tmp/redis.tar.gz
rm -r /tmp/redis.tar.gz
mv phpredis-${PHP_REDIS_VERSION} /usr/src/php/ext/redis
docker-php-ext-install redis
docker-php-source delete
