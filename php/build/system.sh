#!/bin/sh
set -eux

apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted \
    dos2unix

apk add --no-cache \
    curl \
    git \
    gnupg \
    openntpd \
    xvfb \
    wkhtmltopdf
