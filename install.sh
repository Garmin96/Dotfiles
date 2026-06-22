#!/bin/bash
set -e
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DOTFILES_DIR"

PACKAGES=(ghostty tmux nvm git zsh)

for pkg in "${PACKAGES[@]}"; do
  if [ -d "$pkg" ]; then
    echo "🔗 Stowing $pkg..."
    stow "$pkg"
  fi
done

echo "✅ Dotfiles installed!"#!/bin/bash
set -e
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DOTFILES_DIR"

PACKAGES=(ghostty tmux nvm git zsh)

for pkg in "${PACKAGES[@]}"; do
  if [ -d "$pkg" ]; then
    echo "🔗 Stowing $pkg..."
    stow "$pkg"
  fi
done

echo "✅ Dotfiles installed!"
