FROM debian:jessie
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/beanstalkd.sh && \
    /build/clean.sh && \
    /build/ensure.sh

EXPOSE 11300
CMD beanstalkd
