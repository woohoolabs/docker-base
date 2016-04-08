#!/usr/bin/env bash
set -e

apt-get update
apt-get install -y bison libgdbm-dev ruby
rm -rf /var/lib/apt/lists/*
mkdir -p /usr/src/ruby
curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz"
echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c -
tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1
rm ruby.tar.gz
cd /usr/src/ruby
autoconf
./configure --disable-install-doc
make -j"$(nproc)"
make install
apt-get purge -y --auto-remove bison libgdbm-dev ruby
gem update --system
rm -r /usr/src/ruby
