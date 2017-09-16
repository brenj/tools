#!/bin/bash
#
# Upgrade macOS brew/cask packages.

brew update
brew upgrade
brew cleanup
brew cask install --force
