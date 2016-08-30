#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get clean
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*
rm -rf /var/tmp/*
rm -rf /var/www/*
