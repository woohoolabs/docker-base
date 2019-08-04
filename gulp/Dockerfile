FROM node:12.7.0-alpine
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ARG GULP_VERSION=4.0.2

COPY ./gulp/build /build

# Install system dependencies
RUN apk add --no-cache \
        autoconf \
        automake \
        build-base \
        gifsicle \
        g++ \
        file \
        libjpeg-turbo-dev \
        libpng-dev \
        make \
        nasm \
        optipng \
        python

# Gettext
RUN apk add --update libintl && \
    apk add --virtual build_deps gettext &&  \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk --purge -v del build_deps

# Install Gulp & Sass
RUN npm install -g --loglevel=warn --unsafe-perm \
    gulp@${GULP_VERSION}

# Permissions
RUN chmod +x /build/*.sh && \
    /build/permissions.sh

# Clean
RUN rm -rf /var/cache/apk/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/* && \
    rm -rf /var/www/* && \
    rm -rf /var/www/*

# Ensure
RUN /build/ensure.sh && \
    rm -R /build

WORKDIR /code

CMD npm -v
