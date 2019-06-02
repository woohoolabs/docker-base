#!/bin/bash
set -e

apt-get update
apt-get -y install gettext locales

sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen
sed -i -e 's/# hu_HU.UTF-8 UTF-8/hu_HU.UTF-8 UTF-8/' /etc/locale.gen
sed -i -e 's!# \([a-z_A-Z@]*\).UTF-8 UTF-8!\1.UTF-8 UTF-8!' /etc/locale.gen
sed -i -e 's!# \([a-z_A-Z@]*\) UTF-8!\1 UTF-8!' /etc/locale.gen

echo 'LANG="en_US.UTF-8"' >> /etc/default/locale
locale-gen
