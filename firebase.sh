

#!/usr/bin/env bash

# ------------------------------------------------------------------------------
e_pending "Installing Google Firebase Tools"
# ------------------------------------------------------------------------------

if test ! $(which aws); then
    # Install Firebase CLI
    echo "------------------------------"
    echo "Setting up Firebase CLI."

    curl -sL firebase.tools | bash
    npm install -g firebase-tools
    npm install firebase-functions@latest firebase-admin@latest --save

    firebase emulators:start
    # https://firebase.google.com/docs/emulator-suite

    # install firebase cli client
    # https://github.com/ragingwind/fcm-cli#readme
    npm install -g fcm-cli


else
    npm update -g firebase-tools
    npm install firebase-functions@latest firebase-admin@latest --save

    firebase emulators:start
fi
