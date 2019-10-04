FROM php:7.4.0RC3-cli-alpine3.10

FROM docker:19.03.2
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ARG TERRAFORM_VERSION=0.12.9
ARG TERRAFORM_MAILGUN_VERSION=0.3.1
ARG AWS_CLI_VERSION=1.16.252

ENV TF_IN_AUTOMATION=true
ENV PATH $PATH:/opt/terraform:/root/.local/bin/

# Install system dependencies
RUN set -eux; \
    apk add --no-cache \
        git \
        make \
        openntpd

# Install Terraform
RUN set -eux; \
    apk add --no-cache wget unzip ca-certificates libc6-compat && \
    wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -O "/tmp/terraform.zip" && \
    unzip -o /tmp/terraform.zip -d /usr/local/bin && \
    mkdir -p /root/.terraform.d/plugins/ && \
    wget "https://github.com/phillbaker/terraform-provider-mailgunv3/releases/download/v${TERRAFORM_MAILGUN_VERSION}/terraform-provider-mailgunv3_v${TERRAFORM_MAILGUN_VERSION}_linux_amd64_static" -O "/root/.terraform.d/plugins/terraform-provider-mailgunv3_v${TERRAFORM_MAILGUN_VERSION}" && \
    chmod +x /root/.terraform.d/plugins/terraform-provider-mailgunv3_v${TERRAFORM_MAILGUN_VERSION} && \
    apk --purge -v del wget unzip

# Install AWS CLI
RUN set -eux; \
    apk add --no-cache \
        python \
        python-dev \
        py-pip && \
    pip install awscli==$AWS_CLI_VERSION --upgrade --user && \
    apk --purge -v del \
        py-pip \
        python-dev

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
