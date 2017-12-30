#!/usr/bin/env bash
set -e

apt-get -y install libcurl4-gnutls-dev zlib1g-dev libicu-dev libbz2-dev g++
docker-php-ext-configure intl
docker-php-ext-install bcmath bz2 curl gettext intl json mbstring opcache pdo_mysql

# Install timezone DB
pecl install timezonedb
docker-php-ext-enable timezonedb

# Install imagick
apt-get -y --no-install-recommends install libmagickwand-dev
export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS"
pecl install imagick-${PHP_IMAGICK_VERSION}
docker-php-ext-enable imagick

# Install xdebug
# pecl install xdebug

# Install APCU
pecl install apcu
docker-php-ext-enable apcu

# Install phpredis
docker-php-source extract
curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/${PHP_REDIS_VERSION}.tar.gz
tar xfz /tmp/redis.tar.gz
rm -r /tmp/redis.tar.gz
mv phpredis-${PHP_REDIS_VERSION} /usr/src/php/ext/redis
docker-php-ext-install redis
docker-php-source delete
