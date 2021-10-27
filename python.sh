#!/usr/bin/env bash

# Install Python
if test ! $(which python); then
    brew install python
    brew install python3

    brew tap caskroom/cask
    brew search miniconda
    brew install --cask info miniconda
    brew install --cask miniconda
    /usr/local/miniconda3/bin/conda install -c cyclus -c conda-forge -y --file conda-req.txt

    # Install ruby-build and rbenv
    brew install ruby-build
    brew install rbenv
    LINE='eval "$(rbenv init -)"'
    grep -q "$LINE" ~/.extra || echo "$LINE" >> ~/.extra

fi


# Install PyCharm

if [[ ! -d "/Applications/PyCharm CE.app" ]]; then
brew search pycharm-ce
brew install --cask info pycharm-ce
brew install --cask pycharm-ce
fi

