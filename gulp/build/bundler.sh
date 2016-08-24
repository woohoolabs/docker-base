#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

gem install bundler
bundle config --global path "$GEM_HOME"
bundle config --global bin "$GEM_HOME/bin"
