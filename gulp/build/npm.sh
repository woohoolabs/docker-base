#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

curl -L https://npmjs.org/install.sh | npm_install="$NPM_VERSION" sh
