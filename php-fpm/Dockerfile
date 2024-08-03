FROM php:8.3.10-fpm-alpine3.20
MAINTAINER Máté Kocsis <kocsismate@woohoolabs.com>

ARG COMPOSER_VERSION=2.7.7
ARG PHP_REDIS_VERSION=6.0.2

ENV COMPOSER_HOME /composer
ENV PATH /composer/vendor/bin:/code:/code/vendor/bin:$PATH

COPY ./php/build /build

RUN chmod +x /build/*.sh && \
    /build/system.sh && \
    /build/gettext.sh && \
    COMPOSER_VERSION=${COMPOSER_VERSION} REDIS_VERSION=${PHP_REDIS_VERSION} /build/php.sh && \
    /build/msmtp.sh && \
    /build/permissions.sh && \
    /build/clean.sh

RUN /build/ensure.sh && \
    rm -R /build

WORKDIR /code

USER www-data

EXPOSE 9000
CMD php-fpm
