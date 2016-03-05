#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

debconf-set-selections <<< "postfix postfix/mailname string domain"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Satellite System'"

apt-get update
apt-get install -y --no-install-recommends \
                        gettext-base \
                        supervisor \
                        postfix \
                        mailutils \
                        libsasl2-2 \
                        libsasl2-modules
