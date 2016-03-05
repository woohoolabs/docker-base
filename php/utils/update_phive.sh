#!/usr/bin/env bash

curl -L -o phive.phar https://phar.io/releases/phive.phar
curl -L -o phive.phar.asc https://phar.io/releases/phive.phar.asc
gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys 0x9B2D5D79
gpg --verify phive.phar.asc phive.phar
chmod +x phive.phar
sudo mv phive.phar phive
