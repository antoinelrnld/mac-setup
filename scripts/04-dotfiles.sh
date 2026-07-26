#!/bin/bash

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ln -sf "$ROOT/dotfiles/.zshrc" "$HOME/.zshrc"

echo "Dotfiles installed"
