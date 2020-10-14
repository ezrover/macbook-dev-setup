#!/bin/bash

source _utils.sh

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
test_command "nvm"
test_command "yarn"
test_command "npm"
test_app "Sketch"
test_app "Slack"
test_app "Sourcetree"
test_app "Visual Studio Code"
e_success "Optimization commands"

echo "\r"

e_settled "Installation complete!"


# Remove outdated versions from the cellar.
brew cleanup
