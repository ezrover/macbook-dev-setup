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
source android.sh

source go.sh

source vscode.sh

source summary.sh

#source osx-prefs.sh

