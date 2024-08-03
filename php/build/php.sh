#!/bin/sh
set -eux

apk add --no-cache \
    autoconf \
    bzip2-dev \
    curl-dev \
    freetype-dev \
    g++ \
    gettext-dev \
    icu-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    make \
    oniguruma-dev

docker-php-ext-configure intl && \
docker-php-ext-install bcmath bz2 curl gd gettext intl mbstring mysqli opcache pdo_mysql

apk add --no-cache \
    imagemagick-dev \
    imagemagick \
    libtool && \
export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS"

docker-php-source extract && \
curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/${REDIS_VERSION}.tar.gz && \
tar xfz /tmp/redis.tar.gz && \
rm -r /tmp/redis.tar.gz && \
mv phpredis-${REDIS_VERSION} /usr/src/php/ext/redis && \
docker-php-ext-install redis && \
docker-php-source delete

mkdir -p /composer && \
curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer \
    --version=${COMPOSER_VERSION}

apk --purge -v del \
    autoconf \
    make \
    bzip2-dev \
    g++ \
    libtool
