FROM php:8.4.0alpha2-cli-alpine3.20

FROM docker:27.1.0-cli-alpine3.20
MAINTAINER Máté Kocsis <kocsismate@woohoolabs.com>

ARG TERRAFORM_VERSION=1.9.2
ARG AWS_CLI_VERSION=2.17.15

ENV TF_IN_AUTOMATION=true
ENV PATH $PATH:/opt/terraform:/root/.local/bin/

# Install system dependencies
RUN set -eux; \
    apk add --no-cache \
        ca-certificates \
        curl \
        git \
        libc6-compat\
        make \
        openntpd \
        unzip

# Install Terraform
RUN set -eux; \
    curl "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -o "/tmp/terraform.zip" && \
    unzip -o /tmp/terraform.zip -d /usr/local/bin && \
    rm -rf /tmp/terraform.zip

# Install AWS CLI
RUN set -eux; \
    apk add --no-cache \
        python3 \
        python3-dev \
        py-pip && \
    pip install awscli==$AWS_CLI_VERSION --upgrade --user

RUN apk add --no-cache --virtual .build-deps \
    argon2-dev \
    coreutils \
    curl-dev \
    libedit-dev \
    libsodium-dev \
    libxml2-dev \
    oniguruma-dev

COPY --from=0 /usr/local/bin/php /usr/local/bin/php

# Permissions
RUN set -eux; \
    mkdir -p /code && \
    chown -R root:root /code && \
    chmod -R 775 /code

# Clean
RUN set -eux; \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/* && \
    rm -rf /var/www/* && \
    rm -rf /var/www/*

# Ensure
RUN set -eux; \
    git --version && \
    make --version && \
    terraform -v && \
    aws --version && \
    php --version

WORKDIR /code
