FROM php:7.3.1-fpm-stretch
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV COMPOSER_VERSION 1.8.0
ENV PHP_REDIS_VERSION 4.2.0
ENV PHP_IMAGICK_VERSION 3.4.3
ENV PHP_PRESTISSIMO_VERSION 0.3.8

ENV COMPOSER_HOME /composer
ENV NR_INSTALL_SILENT 1
ENV NR_INSTALL_KEY ""
ENV NR_APP_NAME ""
ENV PATH /composer/vendor/bin:/code:/code/vendor/bin:$PATH

COPY ./build /build

RUN chmod -R +x /build && \
    /build/system.sh && \
    /build/gettext.sh

RUN /build/php.sh && \
    /build/composer.sh && \
    /build/blackfire.sh && \
    /build/newrelic.sh

RUN /build/mysql.sh && \
    /build/msmtp.sh && \
    /build/supervisor.sh && \
    /build/permissions.sh

RUN /build/clean.sh && \
    /build/ensure.sh && \
    rm -R /build

USER www-data

WORKDIR /code

EXPOSE 9000
CMD php-fpm
