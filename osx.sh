#!/usr/bin/env bash

# ~/osx.sh — Originally from https://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General UI/UX                                                               #
###############################################################################

defaults write com.apple.finder AppleShowAllFiles YES

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
sudo softwareupdate -ia --verbose
# Install only recommended available updates
#sudo softwareupdate -ir --verbose



if [[ ! -d "/Applications/Xcode.app" ]]; then
# Install Github Desktop App
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
    brew Upgrade
    brew doctor
fi

declare -a brew_cask_arr=(
    "box-drive"
    )


for i in "${brew_cask_arr[@]}"
do
  if [[ ! -d "/Applications/Box.app" ]]; then
    read -p "Do you wish to install this program (Please answer yes or no)? "$i yn
    case $yn in
        [Yy]* ) brew cask install $i;;
        [Nn]* ) continue;;
        * ) echo "Please answer yes or no.";;
    esac
  fi
done

if test ! $(which java); then
    # Install Java since most apps require it
    brew cask install adoptopenjdk
fi

if test ! $(which git); then
# Install git App
brew install git
fi


if test ! $(which git-flow); then
# Install git-flow
brew  install git-flow
fi


if [[ ! -d "/Applications/Github Desktop.app" ]]; then
# Install Github Desktop App
brew search github
brew cask info github
brew cask install github
fi


if [[ ! -d "/Applications/Sourcetree.app" ]]; then
# Install Sourcetree
brew search sourcetree
brew cask info sourcetree
brew cask install sourcetree
fi


if [[ ! -d "/Applications/Docker.app" ]]; then
# Install Docker
brew search docker
brew cask info docker
brew cask install docker
brew cask install docker-compose
fi

if [[ ! -d "/Applications/Slack.app" ]]; then
# Install Slack
brew search slack
brew cask info slack
brew cask install slack
fi

if [[ ! -d "/Applications/Google Chrome.app" ]]; then
# Install Slack
brew search google-chrome
brew cask info google-chrome
brew cask install google-chrome
fi

if [[ ! -d "/Applications/Brave Browser.app" ]]; then
# Install Slack
brew search brave-browser
brew cask info brave-browser
brew cask install brave-browser
fi

if [[ ! -d "/Applications/Postman.app" ]]; then
# Install Postman
brew search postman
brew cask info postman
brew cask install postman
fi
