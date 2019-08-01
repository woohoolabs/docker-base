FROM docker:19.03
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ARG TERRAFORM_VERSION=0.12.5
ARG TERRAFORM_MAILGUN_VERSION=0.3.1
ARG AWS_CLI_VERSION=1.16.209

ENV TF_IN_AUTOMATION=true
ENV PATH $PATH:/opt/terraform:/root/.local/bin/

# Install system dependencies
RUN set -eux; \
    apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted \
        dos2unix && \
    apk add --no-cache \
        git \
        unzip \
        curl \
        make \
        openntpd \
        wget \
        python \
        python-dev \
        py-pip \
        build-base

# Install Terraform
RUN set -eux; \
    wget --no-check-certificate "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -O "/tmp/terraform.zip" && \
    unzip -o /tmp/terraform.zip -d /usr/local/bin

# Install Mailgun Provider
RUN set -eux; \
    mkdir -p /home/gitlab-runner/.terraform.d/plugins/ && \
    wget --no-check-certificate "https://github.com/phillbaker/terraform-provider-mailgunv3/releases/download/v${TERRAFORM_MAILGUN_VERSION}/terraform-provider-mailgunv3_v${TERRAFORM_MAILGUN_VERSION}_linux_amd64" -O "/home/gitlab-runner/.terraform.d/plugins/terraform-provider-mailgunv3_v${TERRAFORM_MAILGUN_VERSION}"

# Install AWS CLI
RUN set -eux; \
    pip install awscli==$AWS_CLI_VERSION --upgrade --user

# Clean
RUN set -eux; \
    apk --purge -v del curl wget unzip py-pip build-base python-dev && \
    rm -rf /var/cache/apk/*

# Ensure
RUN set -eux; \
    ls -la /usr/local/bin/ && \
    git --version && \
    make --version && \
    docker -v && \
    terraform -v && \
    aws --version
