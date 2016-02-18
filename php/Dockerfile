FROM php:7.0.3-fpm
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV COMPOSER_HOME /root/composer
ENV PATH $PATH:/var/www:/var/www/vendor/bin

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/tools.sh && \
    /build/gettext.sh && \
    /build/php.sh && \
    /build/composer.sh && \
    /build/blackfire.sh && \
    /build/mysql.sh && \
    /build/supervisor.sh && \
    /build/clean.sh && \
    /build/ensure.sh
COPY ./bin/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*

WORKDIR /var/www

EXPOSE 9000
CMD php-fpm
