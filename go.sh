#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install Go

if test ! $(which go); then
mkdir -p ~/dev/go
brew install go

# GO tools and dep
brew install dep
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint
fi


