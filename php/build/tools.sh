#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update && \
apt-get -y --force-yes  --no-install-recommends install \
                    curl \
                    git \
                    dkms \
                    netcat \
                    unzip \
                    wget
