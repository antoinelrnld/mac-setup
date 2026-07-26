#!/bin/bash

set -e

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🚀 Starting Mac setup"

source "$ROOT/scripts/utils.sh"


run "$ROOT/scripts/01-homebrew.sh"
run "$ROOT/scripts/02-brew-bundle.sh"
run "$ROOT/scripts/03-macos-defaults.sh"
run "$ROOT/scripts/04-dotfiles.sh"
run "$ROOT/scripts/05-dev-tools.sh"


echo "✅ Mac setup completed"
