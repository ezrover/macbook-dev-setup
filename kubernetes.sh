#!/usr/bin/env bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Installing Kubernetes CLI"
# ------------------------------------------------------------------------------

if test ! $(which kubectl); then
    # Install Kubernetes CLI
    echo "------------------------------"
    echo "Setting up kubectl."

    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"

    echo "------------------------------"
    echo "Setting up helm."
    brew install helm

    # Install Kubernetes VSCode extensions
    /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension Azure/vscode-kubernetes-tools

else 
    echo "------------------------------"
    echo "Upgrading Kubernetes CLI"

    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"
fi
