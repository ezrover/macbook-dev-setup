#!/bin/bash

source _utils.sh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

source osx.sh

source webdev.sh

source tools.sh

source aws.sh

read -p "Do you wish to install AndroidStudio (Please answer yes or no)?  " yn
case $yn in
    [Yy]* ) source android.sh;;
    [Nn]* ) continue;;
    * ) echo "Please answer yes or no.";;
esac

read -p "Do you wish to change GO language (Please answer yes or no)?  " yn
case $yn in
    [Yy]* ) source go.sh;;
    [Nn]* ) continue;;
    * ) echo "Please answer yes or no.";;
esac

source vscode.sh

read -p "Do you wish to change OSX Preferences (Please answer yes or no)?  " yn
case $yn in
    [Yy]* ) source osx-prefs.sh;;
    [Nn]* ) continue;;
    * ) echo "Please answer yes or no.";;
esac

source summary.sh
