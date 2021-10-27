#!/usr/bin/env bash

if test ! $(which node); then
  # Install npm
  brew install node
fi

if test ! $(which npm); then
  # Install npm
  brew install npm

  npm audit fix

  npm init -y
  npm install -g -f eslint
  npm info "eslint-config-airbnb@latest" peerDependencies
  npx install-peerdeps -g --dev eslint-config-airbnb

  npm install -g coffeescript
  npm install -g grunt-cli
  npm install -g jshint
  npm install -g less
  npm install -g jest
  npm install -g -f prettier

  #functional programming tools for javascript
  # https://monet.github.io/monet.js/
  npm install monet --save
else
  e_pending "Upgrading npm"

  npm audit fix

  npm i -g npm@latest
  test_command "npm"

  npm upgrade coffeescript
  npm upgrade grunt-cli
  npm upgrade jshint
  npm upgrade less
  npm upgrade jest
  npm upgrade prettier

  #functional programming tools for javascript
  # https://monet.github.io/monet.js/
  npm upgrade monet --save
fi

if test ! $(which eslint); then

  if has_command "npm"; then
    e_pending "Installing/Upgrading eslint/airbnb/prettier combo"
    npx install-peerdeps -g eslint-config-airbnb
    npm install -f -g prettier eslint-config-prettier eslint-plugin-prettier
    test_command "eslint"
    test_command "prettier"
  fi
else
  brew upgrade npm
fi

if test ! $(which n); then
  e_pending "Installing n"
  brew install n
  test_command "n"
else
  brew upgrade n
fi

if test ! $(which yarn); then
  e_pending "Installing yarn (with Node)"
  brew install yarn
  test_command "yarn"
else
  brew upgrade yarn
fi

# globally apply esline settings https://www.tracylum.com/blog/2017-12-28-setting-up-eslint-globally/
yarn global add eslint eslint-config-airbnb eslint-plugin-jsx-a11y@^2.0.0 eslint-plugin-react eslint-plugin-import eslint-parser