FROM node:7.4
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV NPM_VERSION 4.2.0
ENV RUBY_MAJOR_VERSION 2.4
ENV RUBY_VERSION 2.4.0
ENV RUBY_DOWNLOAD_SHA256 152fd0bd15a90b4a18213448f485d4b53e9f7662e1508190aa5b702446b29e3d
ENV SASS_VERSION 3.4.22
ENV SASS_GLOBBING_VERSION 1.1.5
ENV COMPASS_VERSION 1.0.3

ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_APP_CONFIG $GEM_HOME
ENV PATH $GEM_HOME/bin:$PATH

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/npm.sh && \
    /build/ruby.sh && \
    /build/bundler.sh && \
    /build/sass.sh && \
    /build/gulp.sh && \
    /build/permissions.sh && \
    /build/clean.sh && \
    /build/ensure.sh && \
    rm -R /build

USER gulp

WORKDIR /code

CMD npm -v
