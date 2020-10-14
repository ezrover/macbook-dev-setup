#!/usr/bin/env bash

if test ! $(which node); then
# Install npm
brew  install node
fi

if test ! $(which npm); then
  # Install npm
  brew  install npm

  npm install -g coffeescript
  npm install -g grunt-cli
  npm install -g jshint
  npm install -g less
  npm install -g jest
else
  e_pending "Upgrading npm"
  npm i -g npm@latest
  test_command "npm"
fi

if test ! $(which eslint); then
  npm init -y
  npm install --save-dev eslint

  if has_command "npm"; then
    e_pending "Installing/Upgrading eslint/airbnb/prettier combo"
    npx install-peerdeps -g eslint-config-airbnb
    npm i -g prettier@latest eslint-config-prettier@latest eslint-plugin-prettier@latest
    test_command "eslint"
    test_command "prettier"
  fi
fi


if test ! $(which n); then
  e_pending "Installing n"
  brew install n
  test_command "n"
fi


if test ! $(which nvm); then
  e_pending "Installing nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
  test_command "nvm"
fi


if test ! $(which yarn); then
  e_pending "Installing yarn (with Node)"
  brew install yarn
  test_command "yarn"
fi




