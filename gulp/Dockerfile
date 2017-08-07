FROM node:8.2
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV NPM_VERSION 5.3.0
ENV RUBY_MAJOR_VERSION 2.4
ENV RUBY_VERSION 2.4.1
ENV RUBY_DOWNLOAD_SHA256 a330e10d5cb5e53b3a0078326c5731888bb55e32c4abfeb27d9e7f8e5d000250
ENV SASS_VERSION 3.4.24
ENV SASS_GLOBBING_VERSION 1.1.5
ENV COMPASS_VERSION 1.0.3

ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_APP_CONFIG $GEM_HOME
ENV PATH $GEM_HOME/bin:$PATH

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/system.sh && \
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
