#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

gem install sass -v $SASS_VERSION
gem install sass-globbing -v $SASS_GLOBBING_VERSION
gem install compass -v $COMPASS_VERSION
