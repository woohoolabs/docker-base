#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y --no-install-recommends install \
                    curl \
                    git \
                    dkms \
                    sudo \
                    unzip \
                    wget

echo "www-data ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers
echo "Defaults !env_reset" | tee -a /etc/sudoers
