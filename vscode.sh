#!/usr/bin/env bash

if [[ ! -d "/Applications/Visual Studio Code.app" ]]; then
    # Visula studio code
    brew tap caskroom/cask
    brew search visual-studio-code
    brew install --cask info visual-studio-code
    brew install --cask visual-studio-code
fi


# Forget Postman, Thunder client does it all
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension 	rangav.vscode-thunder-client

# Install firebase extensions
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension toba.vsfire

# Install Gitlabl extensions
# https://marketplace.visualstudio.com/items?itemName=GitLab.gitlab-workflow
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension GitLab.gitlab-workflow

# Install VSCode extensions
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension felipecaputo.git-project-manager
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension editorconfig.editorconfig
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-python.python
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension timonwong.shellcheck

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ecmel.vscode-html-css
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension mrmlnc.vscode-scss
# https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension Zignd.html-css-class-completion

# Javascript
# https://github.com/kamleshchandnani/vscode-js-extension-pack

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension PKief.material-icon-theme
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension eg2.vscode-npm-script

#ESLint
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dbaeumer.vscode-eslint
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dbaeumer.jshint

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension christian-kohler.npm-intellisense

#Facebook Jest for Javascript Unit and Integration Testing
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension Orta.vscode-jest

#Playwright Test automation testing
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-playwright.playwright

#Beautify
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension esbenp.prettier-vscode

#GraphQL
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension GraphQL.vscode-graphql

# https://github.com/auchenberg/vscode-browser-preview
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension auchenberg.vscode-browser-preview

# Git
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension eamodio.gitlens
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension donjayamanne.githistory

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension bierner.markdown-preview-github-styles
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension davidanson.vscode-markdownlint
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension hnw.vscode-auto-open-markdown-preview
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension hbrok.markdown-preview-bitbucket
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension yzhang.markdown-all-in-one

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-azuretools.vscode-docker
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension aaron-bond.better-comments
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension humao.rest-client

# slow as molases! /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension christian-kohler.path-intellisense

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode-remote.vscode-remote-extensionpack
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension msjsdiag.vscode-react-native

# Java tools
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-java-debug
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-maven
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-java-test
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-java-dependency
# https://code.visualstudio.com/docs/java/java-tutorial#_coding-pack-for-java
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscjava.vscode-java-pack

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension techer.open-in-browser
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension naumovs.theme-oceanicnext
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension kisstkondoros.vscode-codemetrics
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension kisstkondoros.vscode-gutter-preview

# AWS
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension AmazonWebServices.aws-toolkit-vscode
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dsteenman.cloudformation-yaml-snippets
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension kddejong.vscode-cfn-lint
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension aws-amplify/amplify-js

# YAML
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension redhat.vscode-yaml

# Json / XML
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension nickdemayo.vscode-json-editor
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dotjoshjohnson.xml

# Peer Programming
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extensionMS-vsliveshare.vsliveshare

# Atlassian Jira and Bitcucket
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension atlassian.atlascode

#Jenkins Pipelines
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension janjoerke.jenkins-pipeline-linter-connector
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension jenkinsxio.vscode-jx-tools
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dave-hagedorn.jenkins-runner

#Azure
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode.vscode-node-azure-pack
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vsciot-vscode.azure-iot-toolkit
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-azuretools.vscode-azureterraform

# C#
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-dotnettools.csharp

# Bitbucket Pull Requests
# https://marketplace.visualstudio.com/items?itemName=RamiroBerrelleza.bitbucket-pull-requests
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension RamiroBerrelleza.bitbucket-pull-requests
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension github.vscode-pull-request-github
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension streetsidesoftware.code-spell-checker

# productivity
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension mikestead.dotenv

#gitignore
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension codezombiech.gitignore

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension tomoki1207.pdf

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension HookyQR.beautify
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension nobuhito.printcode

# https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension quicktype.quicktype

# Gitlab Extension
# https://marketplace.visualstudio.com/items?itemName=gitlab.gitlab-workflow
# /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension GitLab.gitlab-workflow


# CDK Snippets https://marketplace.visualstudio.com/items?itemName=mklein.cdk-snippets&utm_campaign=CDK%20Weekly&utm_medium=email&utm_source=Revue%20newsletter
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension mklein.cdk-snippets	

# Cobalt 2 and Cobalt dark mixed
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dline.cobaltnext
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ritwickdey.liveserver
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension pnp.polacode

# https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dsznajder.es7-react-js-snippets	


# https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension wix.vscode-import-cost

/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension pranaygp.vscode-css-peek
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension naumovs.color-highlight
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension remimarsal.prettier-now

# https://marketplace.visualstudio.com/items?itemName=morrislaptop.vscode-open-in-sourcetree
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension morrislaptop.vscode-open-in-sourcetree	

#OpenAPI
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension Arjun.swagger-viewer
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension 42crunch.vscode-openapi
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension mermade.openapi-lint
