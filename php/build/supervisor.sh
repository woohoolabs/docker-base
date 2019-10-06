#!/bin/sh
set -eux

apk add supervisor
rm /etc/supervisord.conf
