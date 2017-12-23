#!/usr/bin/env bash
# https://github.com/SciRuby/iruby#ubuntu
set -ex

apt-get update
apt-get install -qq libtool libffi-dev ruby ruby-dev make \
  git libzmq-dev autoconf pkg-config
git clone https://github.com/zeromq/czmq
cd czmq
./autogen.sh && ./configure && make && make install

gem install cztop iruby
iruby register --force

gem install bundler
apt-get install zlib1g-dev
gem install rails
