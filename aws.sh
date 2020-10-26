#!/usr/bin/env bash

# ------------------------------------------------------------------------------
e_pending "Installing AWS Tools"
# ------------------------------------------------------------------------------

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

# install and setup gimme-aws-creds
if test ! $(which gimme-aws-creds); then
echo "------------------------------"
echo "TODO: Update .aws/ with your AWS credentials and region, or run aws --configure."
brew install gimme-aws-creds

gimme-aws-creds --action-configure
gimme-aws-creds --profile work
echo "Script completed."
else
gimme-aws-creds upgrade
fi

if test ! $(which terraform); then
# Install terraform
brew install terraform
elsebrew upgrade terraform
fi

if test ! $(which awslocal); then
    brew install localstack
else
    brew reinstall localstack
fi

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
