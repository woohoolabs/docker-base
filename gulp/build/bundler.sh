#!/usr/bin/env bash

gem install bundler
bundle config --global path "$GEM_HOME"
bundle config --global bin "$GEM_HOME/bin"
