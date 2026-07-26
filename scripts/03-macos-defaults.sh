#!/bin/bash

echo "Configuring macOS"

# --------------------------------------
# Finder
# --------------------------------------

# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true


# --------------------------------------
# Dock
# --------------------------------------

# Automatically hide Dock
defaults write com.apple.dock autohide -bool true

# Remove Dock hide delay
defaults write com.apple.dock autohide-delay -float 0

# Hide recent applications
defaults write com.apple.dock show-recents -bool false

# Dock position
defaults write com.apple.dock orientation -string "left"

# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Disable magnification
defaults write com.apple.dock magnification -bool false

# Dock icon size
defaults write com.apple.dock tilesize -int 40


# --------------------------------------
# Mission Control
# --------------------------------------

# Group windows by application
defaults write com.apple.dock expose-group-by-app -bool true


# --------------------------------------
# Appearance
# --------------------------------------

# Automatically switch between light and dark mode
defaults write NSGlobalDomain AppleInterfaceStyleSwitchesAutomatically -bool true


# --------------------------------------
# Sound
# --------------------------------------

# Alert sound
defaults write NSGlobalDomain com.apple.sound.beep.sound -string "Blow"

# Play sound when changing volume
defaults write com.apple.sound.beep.feedback -bool true


# --------------------------------------
# Screen lock
# --------------------------------------

# Require password immediately after screen lock
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


# --------------------------------------
# Keyboard
# --------------------------------------

# Fastest key repeat
defaults write NSGlobalDomain KeyRepeat -int 1

# Shortest delay before key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10


# --------------------------------------
# Touch Bar
# --------------------------------------

# Always show Control Strip
defaults write com.apple.touchbar.agent PresentationModeGlobal -string "fullControlStrip"


# --------------------------------------
# Keyboard shortcuts
# --------------------------------------

# Move focus to next window: Option + Tab
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 27 \
'{enabled = 1; value = {parameters = (9,48,524288); type = standard;};}'


# --------------------------------------
# Restart affected services
# --------------------------------------

killall Finder || true
killall Dock || true
killall SystemUIServer || true
killall cfprefsd || true


echo "macOS configuration completed"