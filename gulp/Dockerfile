FROM node:12.7.0-alpine
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ARG GULP_VERSION=4.0.2

COPY ./gulp/build /build

# Install system dependencies
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted \
        dos2unix && \
    apk add --no-cache \
        gifsicle \
        file \
        libc6-compat \
        libjpeg-turbo-dev \
        libpng-dev \
        optipng \
        nasm

# Install Gulp & Sass
RUN npm install -g --loglevel=warn --unsafe-perm \
    gulp@${GULP_VERSION}

# Permissions
RUN chmod +x /build/permissions.sh && \
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
