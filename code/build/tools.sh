#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update && \
apt-get -y --no-install-recommends install \
                    curl \
                    git \
                    unzip \
                    wget
