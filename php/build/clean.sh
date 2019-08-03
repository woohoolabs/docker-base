#!/bin/sh
set -eux

rm -rf /var/cache/apk/* && \
rm -rf /tmp/* && \
rm -rf /var/tmp/* && \
rm -rf /var/www/* && \
rm -rf /var/www/*
