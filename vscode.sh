#!/usr/bin/env bash

if [[ ! -d "/Applications/Visual Studio Code.app" ]]; then
# Visula studio code
brew tap caskroom/cask
brew search visual-studio-code
brew cask info visual-studio-code
brew cask install visual-studio-code
fi

# Install VSCode extensions
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension felipecaputo.git-project-manager
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension editorconfig.editorconfig
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-python.python
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension timonwong.shellcheck
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-python.anaconda-extension-pack


# Javascript
# https://github.com/kamleshchandnani/vscode-js-extension-pack

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension 	PKief.material-icon-theme
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension 	vscode-icons-team.vscode-icons
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension eg2.vscode-npm-script
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension baeumer.vscode-eslint
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension christian-kohler.npm-intellisense
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension Orta.vscode-jest
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension esbenp.prettier-vscode
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension GraphQL.vscode-graphql

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension hnw.vscode-auto-open-markdown-preview

# Git
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension eamodio.gitlens
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension donjayamanne.githistory
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension github.vscode-pull-request-github
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension gbierner.markdown-preview-github-styles

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension 	ms-azuretools.vscode-docker
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension 	aaron-bond.better-comments
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension 	humao.rest-client

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension yzhang.markdown-all-in-one
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension christian-kohler.path-intellisense


/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode-remote.vscode-remote-extensionpack
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension msjsdiag.vscode-react-native

# Java tools
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-java-debug
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-maven
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-java-test

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vsciot-vscode.vscode-arduino

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension hbrok.markdown-preview-bitbucket

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension techer.open-in-browser

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension naumovs.theme-oceanicnext

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension kisstkondoros.vscode-codemetrics

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension msjsdiag.debugger-for-chrome

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension kisstkondoros.vscode-gutter-preview

# AWS

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension AmazonWebServices.aws-toolkit-vscode
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dsteenman.cloudformation-yaml-snippets
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension HashiCorp.terraform
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension kddejong.vscode-cfn-lint

# Peer Programming
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extensionMS-vsliveshare.vsliveshare
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension karigari.chat

# Atlassian Jira and Bitcucket
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension atlassian.atlascode

#Jenkins Pipelines
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension janjoerke.jenkins-pipeline-linter-connector
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension jenkinsxio.vscode-jx-tools
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dave-hagedorn.jenkins-runner

#OpenAPI
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension  arjun-g/vs-swagger-viewer

#Azure
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension  ms-vscode.vscode-node-azure-pack
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension  vsciot-vscode.azure-iot-toolkit
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension  ms-azuretools.vscode-azureterraform

# C#
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension  ms-dotnettools.csharp

# Json / XML
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension  nickdemayo.vscode-json-editor
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension  dotjoshjohnson.xml
