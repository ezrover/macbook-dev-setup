#!/usr/bin/env bash

xcode-select --install

brew tap homebrew/cask
brew doctor
brew update
brew upgrade

brew install --cask temurin

if [[ ! -d "/Applications/IntelliJ IDEA CE.app" ]]; then
    # IntelliJ IDEA Ultimate Edition
    brew install --appdir /Applications --cask intellij-idea-ce
fi

if [[ ! -d "/Applications/Android Studio.app" ]]; then
    brew install --appdir /Applications --cask android-studio
    brew install --cask android-ndk
else
    brew upgrade --appdir /Applications --cask android-studio
    brew upgrade --cask android-ndk
fi

if test ! $(which mvn); then
    # Install maven
    brew install maven
else
    brew upgrade maven
fi

echo "export ANDROID_HOME=/usr/local/share/android-sdk" >>~/.zshrc
echo 'export ANDROID_NDK_HOME="/usr/local/share/android-ndk"'  >>~/.zshrc
source ~/.zshrc
