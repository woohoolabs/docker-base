FROM php:7.0.10-fpm
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV COMPOSER_VERSION 1.2.0
ENV PHP_REDIS_VERSION 3.0.0

ENV COMPOSER_HOME /composer
ENV NR_INSTALL_SILENT 1
ENV NR_INSTALL_KEY ""
ENV NR_APP_NAME ""
ENV PATH $PATH:/code:/code/vendor/bin

COPY ./build /build
COPY ./bin/* /usr/local/bin/

RUN chmod -R ugo+x /build && \
    chmod +x /usr/local/bin/* && \
    /build/tools.sh

USER www-data

RUN /build/gettext.sh && \
    /build/php.sh && \
    /build/composer.sh && \
    /build/blackfire.sh && \
    /build/newrelic.sh && \
    /build/mysql.sh && \
    /build/msmtp.sh && \
    /build/supervisor.sh && \
    /build/clean.sh && \
    /build/ensure.sh && \
    rm -R /build

WORKDIR /code

EXPOSE 9000
CMD php-fpm
