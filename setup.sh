#!/bin/bash

source _utils.sh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

source osx.sh

read -p "Do you wish to install Web Development Tools (Please answer yes or no)?  " yn
case $yn in
[Yy]*) source webdev.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to install Tools (Please answer yes or no)?  " yn
case $yn in
[Yy]*) source tools.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to install AWS Tools (Please answer yes or no)?  " yn
case $yn in
[Yy]*) source aws.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to install AndroidStudio (Please answer yes or no)?  " yn
case $yn in
[Yy]*) source android.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to change GO language (Please answer yes or no)?  " yn
case $yn in
[Yy]*) source go.sh ;;
*) echo "Please answer yes or no." ;;
esac

source vscode.sh

read -p "Do you wish to change OSX Preferences (Please answer yes or no)?  " yn
case $yn in
[Yy]*) source osx-prefs.sh ;;
*) echo "Please answer yes or no." ;;
esac

source summary.sh

ln -s .profile .zprofile
