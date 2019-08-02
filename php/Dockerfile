FROM php:7.4.0beta1-fpm-alpine3.10
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ARG COMPOSER_VERSION=1.8.5
ARG PHP_REDIS_VERSION=4.3.0
ARG PHP_IMAGICK_VERSION=3.4.4
ARG PHP_PRESTISSIMO_VERSION=0.3.8

ENV COMPOSER_HOME /composer
ENV PATH /composer/vendor/bin:/code:/code/vendor/bin:$PATH

COPY ./build /build

# Install system dependencies
RUN set -eux; \
    apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted \
        dos2unix && \
    apk add --no-cache \
        autoconf \
        curl \
        git \
        gnupg \
        make \
        openntpd \
        unzip \
        wget \
        xvfb \
        wkhtmltopdf

# Install locales and gettext
RUN apk --no-cache add ca-certificates wget && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-bin-2.25-r0.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-i18n-2.25-r0.apk && \
    apk add glibc-bin-2.25-r0.apk glibc-i18n-2.25-r0.apk glibc-2.25-r0.apk && \
    cat /build/locales.txt | xargs -i /usr/glibc-compat/bin/localedef -i {} -f UTF-8 {}.UTF-8

# Install PHP
RUN set -eux; \
    apk add --no-cache \
        bzip2-dev \
        curl-dev \
        g++ \
        gettext-dev  \
        icu-dev  \
        oniguruma-dev && \
    docker-php-ext-configure intl && \
    docker-php-ext-install bcmath bz2 curl gettext intl mbstring mysqli opcache pdo_mysql && \
    pecl install timezonedb

# Install imagick extension
RUN set -eux; \
    apk add --no-cache \
        imagemagick-dev \
        imagemagick \
        libtool && \
    export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" && \
    pecl install imagick-${PHP_IMAGICK_VERSION} && \
    docker-php-ext-enable imagick

# Install PHPRedis extension
RUN set -eux; \
    docker-php-source extract && \
    curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/${PHP_REDIS_VERSION}.tar.gz && \
    tar xfz /tmp/redis.tar.gz && \
    rm -r /tmp/redis.tar.gz && \
    mv phpredis-${PHP_REDIS_VERSION} /usr/src/php/ext/redis && \
    docker-php-ext-install redis && \
    docker-php-source delete

# Install Composer
RUN set -eux; \
    mkdir -p /composer && \
    curl -sS https://getcomposer.org/installer | php -- \
        --install-dir=/usr/local/bin \
        --filename=composer \
        --version=${COMPOSER_VERSION} && \
    composer global require hirak/prestissimo:${PHP_PRESTISSIMO_VERSION}

# Install other tools
RUN set -eux; \
    apk add msmtp supervisor

# Set permissions
RUN set -eux; \
    chmod +x /build/permissions.sh && \
    /build/permissions.sh

# Clean
RUN set -eux; \
    apk --purge -v del \
        autoconf \
        g++ \
        libtool \
        make \
        wget \
        unzip && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/* && \
    rm -rf /var/www/* && \
    rm -rf /var/www/*

RUN /build/ensure.sh && \
    rm -R /build

USER www-data

WORKDIR /code

EXPOSE 9000
CMD php-fpm
