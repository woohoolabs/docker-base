#!/bin/sh
set -eux

apk add --no-cache \
    curl \
    git \
    gnupg \
    openntpd \
    xvfb \
    wkhtmltopdf
