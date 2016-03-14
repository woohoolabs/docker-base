FROM node:5.5
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV RUBY_MAJOR 2.3
ENV RUBY_VERSION 2.3.0
ENV RUBY_DOWNLOAD_SHA256 ba5ba60e5f1aa21b4ef8e9bf35b9ddb57286cb546aac4b5a28c71f459467e507
ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_APP_CONFIG $GEM_HOME
ENV PATH $GEM_HOME/bin:$PATH

COPY ./build /build
RUN chmod -R ug+x /build && \
    sync && \
    /build/ruby.sh && \
    /build/bundler.sh && \
    /build/sass.sh && \
    /build/gulp.sh && \
    /build/clean.sh && \
    /build/ensure.sh

WORKDIR /code
CMD npm -v
