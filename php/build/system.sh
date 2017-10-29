#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y --no-install-recommends install \
                    curl \
                    git \
                    dirmngr \
                    gnupg \
                    dkms \
                    unzip \
                    wget

apt-get -y --install-recommends install \
                    xvfb \
                    wkhtmltopdf
