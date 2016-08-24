FROM node:6.4
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_APP_CONFIG $GEM_HOME
ENV PATH $GEM_HOME/bin:$PATH

ENV NPM_VERSION 3.10.7
ENV RUBY_MAJOR_VERSION 2.3
ENV RUBY_VERSION 2.3.0
ENV RUBY_DOWNLOAD_SHA256 ba5ba60e5f1aa21b4ef8e9bf35b9ddb57286cb546aac4b5a28c71f459467e507
ENV SASS_VERSION 3.4.22
ENV SASS_GLOBBING_VERSION 1.1.5
ENV SASS_VERSION 3.4.22
ENV COMPASS_VERSION 1.0.3

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/npm.sh && \
    /build/ruby.sh && \
    /build/bundler.sh && \
    /build/sass.sh && \
    /build/gulp.sh && \
    /build/clean.sh && \
    /build/ensure.sh && \
    rm -R /build

WORKDIR /code
CMD npm -v
