FROM debian:jessie
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/postfix.sh && \
    /build/clean.sh && \
    /build/ensure.sh

WORKDIR /code

EXPOSE 26
CMD postfix
