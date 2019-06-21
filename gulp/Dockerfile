FROM node:12.4-stretch
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV NPM_VERSION 6.9.0
ENV RUBY_MAJOR_VERSION 2.6
ENV RUBY_VERSION 2.6.3
ENV RUBY_DOWNLOAD_SHA256 577fd3795f22b8d91c1d4e6733637b0394d4082db659fccf224c774a2b1c82fb
ENV SASS_VERSION 3.7.4
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
