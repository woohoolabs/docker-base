FROM debian:jessie
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV PATH $PATH:/opt/terraform

ENV DOCKER_COMPOSE_VERSION 1.8.0
ENV DOCKER_MACHINE_VERSION 0.8.0
ENV TERRAFORM_VERSION 0.7.1
ENV TERRAFORM_S3_DIR_VERSION 0.0.3

COPY ./build /build

RUN chmod -R ug+x /build && \
    sync && \
    /build/tools.sh && \
    /build/docker.sh && \
    /build/terraform.sh && \
    /build/aws-cli.sh && \
    /build/ensure.sh && \
    rm -R /build

WORKDIR /code
