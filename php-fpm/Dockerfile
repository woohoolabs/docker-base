FROM php:7.4-rc-fpm-alpine3.10
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ARG COMPOSER_VERSION=1.9.0
ARG PHP_REDIS_VERSION=4.3.0
ARG PHP_IMAGICK_VERSION=3.4.4
ARG PHP_PRESTISSIMO_VERSION=0.3.8

ENV COMPOSER_HOME /composer
ENV PATH /composer/vendor/bin:/code:/code/vendor/bin:$PATH

COPY ./php/build /build

RUN chmod +x /build/*.sh && \
    /build/system.sh && \
    /build/gettext.sh && \
    COMPOSER_VERSION=${COMPOSER_VERSION} REDIS_VERSION=${PHP_REDIS_VERSION} IMAGICK_VERSION=${PHP_IMAGICK_VERSION} PRESTISSIMO_VERSION=${PHP_PRESTISSIMO_VERSION} /build/php.sh && \
    /build/msmtp.sh && \
    /build/permissions.sh && \
    /build/clean.sh

RUN /build/ensure.sh && \
    rm -R /build

WORKDIR /code

EXPOSE 9000
CMD php-fpm
