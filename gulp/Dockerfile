FROM node:22.5.1-bookworm
MAINTAINER Máté Kocsis <kocsismate@woohoolabs.com>

ARG GULP_VERSION=5.0.0

COPY ./gulp/build /build

RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    gcc \
    gettext-base \
    g++ \
    gifsicle \
    libpng-dev \
    python3.6 \
    zlib1g-dev

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
