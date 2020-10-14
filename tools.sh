#!/usr/bin/env bash

source _utils.sh

# Install command-line tools using Homebrew.

# ------------------------------------------------------------------------------
e_pending "Checking applications"
# ------------------------------------------------------------------------------

if [[ ! -d "/Applications/DiffMerge.app" ]]; then
if has_command "brew cask"; then
  if ! has_app "DiffMerge"; then
    get_consent "Install DiffMerge.app"
    if has_consent; then
      e_pending "Installing diffmerge"
      brew cask install diffmerge
      test_app "DiffMerge"
    fi
  fi
fi
fi

if [[ ! -d "/Applications/iTerm.app" ]]; then
if has_command "brew cask"; then
  if ! has_app "iTerm"; then
    get_consent "Install iTerm.app"
    if has_consent; then
      e_pending "Installing iterm2"
      brew cask install iterm2
      test_app "iTerm"
    fi
  fi
fi
fi

if [[ ! -d "/Applications/Sketch.app" ]]; then
if has_command "brew cask"; then
  if ! has_app "Sketch"; then
    get_consent "Install Sketch.app"
    if has_consent; then
      e_pending "Installing sketch"
      brew cask install sketch
      test_app "Sketch"
    fi
  fi
fi
fi

# ------------------------------------------------------------------------------
e_pending "Checking tools"
# ------------------------------------------------------------------------------

if test ! $(which watchman); then
if has_command "brew"; then
  if ! has_command "watchman"; then
    e_pending "Installing watchman"
    brew install watchman
    test_command "watchman"
  fi
fi
fi

if test ! $(which watch); then
if has_command "brew"; then
  if ! has_command "watch"; then
    e_pending "Installing watch"
    brew install watch
    test_command "watch"
  fi
fi
fi

if test ! $(which wget); then
if has_command "brew"; then
  if ! has_command "wget"; then
    e_pending "Installing wget"
    brew install wget
    test_command "wget"
  fi
fi
fi


if test ! $(which curl); then
if has_command "brew"; then
  if ! has_command "curl"; then
    e_pending "Installing curl"
    brew install curl
    test_command "curl"
  fi
fi
fi

if test ! $(which trash); then
if has_command "brew"; then
  if ! has_command "trash"; then
    e_pending "Installing trash"
    brew install trash
    test_command "trash"
  fi
fi
fi

if test ! $(which zsh); then
if has_command "brew"; then
  if ! has_command "zsh"; then
    get_consent "Install zsh"
    if has_consent; then
      e_pending "Installing zsh"
      brew install zsh
      test_command "zsh"
    fi
  fi
fi

if has_command "zsh"; then
  if ! has_path ".oh-my-zsh"; then
    get_consent "Install oh-my-zsh"
    if has_consent; then
      e_pending "Installing oh-my-zsh"
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
      test_path ".oh-my-zsh"
    fi
  fi
fi

if has_command "brew" && has_command "zsh"; then
  if ! has_brew "powerlevel10k"; then
    get_consent "Install powerlevel10k (CLI theming)"
    if has_consent; then
      e_pending "Installing powerlevel10k"
      brew install romkatv/powerlevel10k/powerlevel10k
      echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
      test_brew "powerlevel10k"
      p10k configure
    fi
  fi
fi

if has_command "brew" && has_command "zsh"; then
  if ! has_brew "zsh-autosuggestions"; then
    get_consent "Install zsh-autosuggestions"
    if has_consent; then
      e_pending "Installing zsh-autosuggestions"
      brew install zsh-autosuggestions
      echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
      test_brew "zsh-autosuggestions"
    fi
  fi
fi


if has_command "brew" && has_command "zsh"; then
  if ! has_brew "zsh-syntax-highlighting"; then
    get_consent "Install zsh-syntax-highlighting"
    if has_consent; then
      e_pending "Installing zsh-syntax-highlighting"
      brew install zsh-syntax-highlighting
      echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
      test_brew "zsh-syntax-highlighting"
    fi
  fi
fi

ZSH_DISABLE_COMPFIX="true"
source $ZSH/oh-my-zsh.sh

# Make the Homebrew copy of zsh your default shell
chsh -s /usr/local/bin/zsh
fi

# ------------------------------------------------------------------------------
e_pending "Running optimizations"
# ------------------------------------------------------------------------------

if has_command "brew"; then
  e_pending "Optimizing Homebrew"
  brew doctor
  brew cleanup
fi

get_consent "Re-sort Launchpad applications"
if has_consent; then
  e_pending "Re-sorting Launchpad applications"
  defaults write com.apple.dock ResetLaunchPad -boolean true
  killall Dock
fi
