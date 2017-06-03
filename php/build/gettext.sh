#!/bin/bash
set -e

apt-get -y install gettext locales
locale-gen --purge en_GB.UTF-8
locale-gen en_US.UTF-8
locale-gen fr_FR.UTF-8
locale-gen hu_HU.UTF-8
