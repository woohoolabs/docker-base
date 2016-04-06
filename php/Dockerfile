FROM php:7.0.5-fpm
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV COMPOSER_HOME /root/composer
ENV PATH $PATH:/code:/code/vendor/bin

COPY ./build /build
COPY ./bin/* /usr/local/bin/

RUN chmod -R ug+x /build && \
    chmod +x /usr/local/bin/* && \
    sync && \
    /build/tools.sh && \
    /build/gettext.sh && \
    /build/php.sh && \
    /build/composer.sh && \
    /build/blackfire.sh && \
    /build/mysql.sh && \
    /build/msmtp.sh && \
    /build/supervisor.sh && \
    /build/clean.sh && \
    /build/ensure.sh && \
    rm -R /build

WORKDIR /code

EXPOSE 9000
CMD php-fpm
