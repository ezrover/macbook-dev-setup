#!/usr/bin/env bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Installing Terraform"
# ------------------------------------------------------------------------------

if test ! $(which terraform); then
    # Install AWS SDK
    echo "------------------------------"
    echo "Setting up Terraform."

    /usr/local/opt/python@3.9/bin/python3.9 -m pip install --upgrade pip
    
    brew update
    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform
    terraform -install-autocomplete

    # Install terraform VSCode extensions
    /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension HashiCorp.terraform

else 
    brew update
    brew tap hashicorp/tap
    brew upgrade hashicorp/tap/terraform
fi
