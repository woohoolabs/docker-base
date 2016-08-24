#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get -y install python-pip
pip install awscli
