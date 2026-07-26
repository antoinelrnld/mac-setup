#!/bin/bash

echo "Configuring macOS"


# Afficher extensions fichiers
defaults write NSGlobalDomain AppleShowAllExtensions -bool true


# Finder afficher fichiers cachés
defaults write com.apple.finder AppleShowAllFiles -bool true


# Dock caché automatiquement
defaults write com.apple.dock autohide -bool true


killall Finder || true
killall Dock || true
