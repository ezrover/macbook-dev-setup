#!/usr/bin/env bash

# ~/osx.sh — Originally from https://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General UI/UX                                                               #
###############################################################################

defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

# Set computer name (as done via System Preferences → Sharing)
#sudo scutil --set ComputerName "0x6D746873"
#sudo scutil --set HostName "0x6D746873"
#sudo scutil --set LocalHostName "0x6D746873"
#sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "0x6D746873"

# Set standby delay to 24 hours (default is 1 hour or 3600)
#sudo pmset -a standbydelay 86400

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "


# Step 1: Update the OS and Install Xcode Tools
echo "------------------------------"
echo "Updating OSX.  If this requires a restart, run the script again."
# Install all available updates
sudo softwareupdate --all --install --force

#many tools require java preinstalled


if test ! $(which java); then
    # Install Java since most apps require it
  brew install --cask adoptopenjdk

  sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
  echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc
  export CPPFLAGS="-I/usr/local/opt/openjdk/include"
else
  brew install --cask adoptopenjdk
fi

# Xcode is Required:
if [[ ! -d "/Applications/Xcode.app" ]]; then
    # Install Xcode App
    brew install mas
    mas list
    mas install 497799835 # xcode
fi

echo "------------------------------"
# Install Xcode command line tools
if test ! $(which xcode-\select); then
check=$((xcode-\select --install) 2>&1)
echo $check
str="xcode-select: note: install requested for command line developer tools"
while [[ "$check" == "$str" ]];
do
  echo "Installing Xcode Command Line Tools.";
  osascript -e 'tell app "System Events" to display dialog "xcode command-line tools missing." buttons "OK" default button 1 with title "xcode command-line tools"'
  exit;
done
fi

if has_path "Projects"; then
  e_success "~/Projects"
else
  mkdir ~/Projects
fi

# Install HomeBrew as PackageManager
# https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md
if test ! $(which brew); then
#if ! [ -x "$(command -v brew)" ]; then
    echo "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    else
    # Make sure we’re using the latest Homebrew.
    brew update

    # Upgrade any already-installed formulae.
    brew upgrade
    brew doctor
fi


brew install -f -g git


if test ! $(which git-flow); then
# Install git-flow
brew  install git-flow
else
  brew upgrade git-flow
fi


if [[ ! -d "/Applications/Github Desktop.app" ]]; then
# Install Github Desktop App
  brew install --cask --appdir="/Applications" github-desktop
  brew install --cask --appdir="/Applications" github
fi


if [[ ! -d "/Applications/Sourcetree.app" ]]; then
  # Install Sourcetree
  brew install --cask sourcetree
fi


if [[ ! -d "/Applications/Docker.app" ]]; then
  # Install Docker
  brew install docker
  brew install docker-compose
fi

if [[ ! -d "/Applications/Google Chrome.app" ]]; then
# Install Chrome
  brew install --cask --appdir="/Applications" google-chrome
fi

if [[ ! -d "/Applications/Brave Browser.app" ]]; then
# Install Brave
brew install --cask brave-browser
fi

if [[ ! -d "/Applications/Postman.app" ]]; then
# Install Postman
brew search postman
brew install --cask info postman
brew install --cask postman
else
  brew upgrade postman
fi

if [[ ! -d "/Applications/Graphviz.app" ]]; then
  brew install graphviz
else
  brew upgrade graphviz
fi

if test ! $(which http); then
    echo "Installing httpie"
  brew install httpie
else
  brew upgrade httpie
fi

# cleanup
brew cleanup -s
rm -f -r /Library/Caches/Homebrew/*