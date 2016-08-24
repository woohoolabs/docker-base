#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

# Downloading and installing Terraform
wget --no-check-certificate https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -O /tmp/terraform.zip
mkdir -p /opt/terraform
unzip -o /tmp/terraform.zip -d /opt/terraform

# Download Terraform-S3-dir
wget --no-check-certificate https://github.com/saymedia/terraform-s3-dir/releases/download/v${TERRAFORM_S3_DIR_VERSION}/terraform-s3-dir-v$TERRAFORM_S3_DIR_VERSION-linux.tar.xz -O /tmp/terraform-s3-dir.tar.xz
tar xf /tmp/terraform-s3-dir.tar.xz -C /opt/terraform/

# Install GraphWiz
apt-get -y install graphviz
