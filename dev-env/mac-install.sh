#!/usr/bin/env bash
# https://github.com/SciRuby/iruby#mac
set -ex

brew cask install miniconda

brew install rbenv
rbenv install -s 2.4.2
rbenv global 2.4.2

brew install automake asciidoc xmlto
brew install zeromq --HEAD
brew install czmq --HEAD
gem install cztop
gem install specific_install
gem specific_install https://github.com/SciRuby/iruby.git
iruby register --force
