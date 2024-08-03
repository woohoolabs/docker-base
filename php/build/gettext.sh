#!/bin/sh
set -eux

GLIBC_VERSION="2.35-r1"

apk --no-cache add \
    ca-certificates \
    wget

wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-$GLIBC_VERSION.apk && \
wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-bin-$GLIBC_VERSION.apk && \
wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-i18n-$GLIBC_VERSION.apk && \
apk add glibc-bin-$GLIBC_VERSION.apk glibc-i18n-$GLIBC_VERSION.apk glibc-$GLIBC_VERSION.apk && \
cat /build/locales.txt | xargs -i /usr/glibc-compat/bin/localedef -i {} -f UTF-8 {}.UTF-8

apk --purge -v del \
    wget
