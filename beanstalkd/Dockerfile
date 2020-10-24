FROM debian:9.1
MAINTAINER Máté Kocsis <kocsismate@woohoolabs.com>

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/beanstalkd.sh && \
    /build/clean.sh && \
    /build/ensure.sh && \
    rm -R /build

WORKDIR /code

EXPOSE 11300
CMD beanstalkd
