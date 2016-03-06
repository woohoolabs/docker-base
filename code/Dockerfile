FROM debian:jessie
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV CODE_URL ""
ENV CODE_BASIC_AUTH_USER ""
ENV CODE_BASIC_AUTH_PASSWORD ""

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/tools.sh && \
    /build/clean.sh && \
    /build/ensure.sh
COPY ./bin/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*

VOLUME ["/var/www"]
WORKDIR /var/www

CMD /bin/sh -c "checkout"
