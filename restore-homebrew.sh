#!/bin/bash

failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
brew install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1" # package failed to install.
}
brew cask install iterm2
brew cask install slack
install_package gdbm ''
install_package openssl ''
install_package python ''
install_package python3 ''
install_package readline ''
install_package sqlite ''
install_package xz ''
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
