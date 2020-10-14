#!/usr/bin/env bash


if [[ ! -d "/Applications/IntelliJ IDEA CE.app" ]]; then
# IntelliJ IDEA Ultimate Edition
brew cask install intellij-idea-ce
fi

if [[ ! -d "/Applications/Android Studio.app" ]]; then
brew cask install android-studio
fi

brew cask install android-sdk
brew cask install android-ndk

if test ! $(which maven); then
# Install maven
brew install maven
fi

export ANDROID_HOME=/usr/local/share/android-sdk
