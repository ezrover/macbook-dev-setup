#!/usr/bin/env bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Installing AWS Tools"
# ------------------------------------------------------------------------------

# Install Pre requisits
xcode-select --install

brew tap homebrew/cask
brew doctor
brew update
brew upgrade

# ------------------------------------------------------------------------------
e_pending "Ensure Python and Pip are installed"
# ------------------------------------------------------------------------------

brew install python@3.9
python3 -m pip install --upgrade pip setuptools wheel

if test ! $(which aws); then
    # Install AWS SDK
    echo "------------------------------"
    echo "Setting up AWS."
    brew install -f -g awscli

    aws --aws --version
else 
    brew reinstall awscli
    brew unlink awscli && brew link awscli
    aws --aws --version
fi


# ------------------------------------------------------------------------------
e_pending "Install local AWS emulator"
# ------------------------------------------------------------------------------

if test ! $(which awslocal); then
    brew install localstack
else
    brew reinstall localstack
fi


# ------------------------------------------------------------------------------
e_pending "install and setup gimme-aws-creds"
# ------------------------------------------------------------------------------

# install and setup gimme-aws-creds
# if test ! $(which gimme-aws-creds); then
# echo "------------------------------"
# echo "TODO: Update .aws/ with your AWS credentials and region, or run aws --configure."
# brew install gimme-aws-creds

# gimme-aws-creds --action-configure
# gimme-aws-creds --profile work
# echo "Script completed."
# else
# gimme-aws-creds upgrade
# fi


if test ! $(which cdk); then
brew install aws-cdk
else
brew upgrade aws-cdk
fi

if test ! $(which sam); then
brew tap aws/tap
brew install aws-sam-cli
else
brew upgrade aws-sam-cli
fi

# if test ! $(which amplify); then
# curl -sL https://aws-amplify.github.io/amplify-cli/install | bash && $SHELL
# else
# curl -sL https://aws-amplify.github.io/amplify-cli/install | bash && $SHELL
# fi

pip3 install cfn-lint
pip3 install pydot

