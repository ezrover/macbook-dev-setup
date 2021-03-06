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

# Required:

if [[ ! -d "/Applications/Xcode.app" ]]; then
    # Install Xcode App
    brew install mas
    mas list
    mas install 497799835 # xcode
fi

read -p "Do you wish to install Web Development Tools (Please answer y/n)?  " yn
case $yn in
[Yy]*) source webdev.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to install Tools (Please answer y/n)?  " yn
case $yn in
[Yy]*) source tools.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to install AWS Tools (Please answer y/n)?  " yn
case $yn in
[Yy]*) source aws.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to install AndroidStudio (Please answer y/n)?  " yn
case $yn in
[Yy]*) source android.sh ;;
*) echo "Please answer yes or no." ;;
esac

read -p "Do you wish to change GO language (Please answer y/n)?  " yn
case $yn in
[Yy]*) source go.sh ;;
*) echo "Please answer yes or no." ;;
esac

if [[ ! -d "/Applications/Visual Studio Code.app" ]]; then
    # Visula studio code
  source vscode.sh
fi

read -p "Do you wish to change OSX Preferences (Please answer y/n)?  " yn
case $yn in
[Yy]*) source osx-prefs.sh ;;
*) echo "Please answer yes or no." ;;
esac

ln -s .profile .zprofile

# ------------------------------------------------------------------------------
e_pending "Creating summary"
# ------------------------------------------------------------------------------

echo "\r"

e_success "Default commands"
if has_path "Projects"; then
  e_success "~/Projects"
else
  e_failure "~/Projects"
fi
test_command "xcode-select"
test_command "brew"
test_command "watchman"
test_command "trash"
test_command "git"
test_command "git-flow"
test_command "zsh"
test_command "node"
test_command "n"
test_command "yarn"
test_command "npm"
test_app "Sketch"
test_app "Slack"
test_app "Sourcetree"
test_app "Visual Studio Code"
e_success "Optimization commands"

echo "\r"

# ------------------------------------------------------------------------------
e_pending "Running optimizations"
# ------------------------------------------------------------------------------

e_pending "Optimizing Homebrew"
brew doctor
brew cleanup

defaults write com.apple.dock ResetLaunchPad -boolean true
killall Dock

e_settled "Installation complete!"

# Make the Homebrew copy of zsh your default shell
#chsh -s /usr/local/bin/zsh
#fi
