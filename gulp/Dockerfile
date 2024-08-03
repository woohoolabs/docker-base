FROM node:22.5.1-bookworm
MAINTAINER Máté Kocsis <kocsismate@woohoolabs.com>

ARG GULP_VERSION=5.0.0

COPY ./gulp/build /build

# Install system dependencies
#RUN apk add --no-cache \
#        autoconf \
#        automake \
#        build-base \
#        gifsicle \
#        g++ \
#        gcc \
#        file \
#        libc6-compat \
#        libjpeg-turbo-dev \
#        libpng-dev \
#        libtool \
#        make \
#        musl \
#        musl-dev \
#        nasm \
#        optipng \
#        pkgconf \
#        python3 \
#        zlib \
#        zlib-dev

RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    gcc \
    g++ \
    gifsicle \
    libpng-dev \
    python3.6 \
    zlib1g-dev

# Gettext
#RUN apk add --update libintl && \
#    apk add --virtual build_deps gettext &&  \
#    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
#    apk --purge -v del build_deps

# Install Gulp
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
