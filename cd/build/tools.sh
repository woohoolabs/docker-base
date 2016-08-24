#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get -y install dkms \
                   git \
                   unzip \
                   curl \
                   python-software-properties \
                   software-properties-common \
                   wget
