#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d%H%M%S)"

echo "Dotfiles directory: $DOTFILES_DIR"
echo "Backup directory:   $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

shopt -s dotglob nullglob

for item in "$DOTFILES_DIR"/* "$DOTFILES_DIR"/.*; do
  name="$(basename "$item")"

  if [[ "$name" == "." || "$name" == ".." || "$name" == ".git" || "$name" == "install.sh" ]]; then
    continue
  fi

  target="$HOME/$name"

  if [ -e "$target" ] || [ -L "$target" ]; then
    echo "Backing up existing: $target → $BACKUP_DIR/"
    mv "$target" "$BACKUP_DIR/"
  fi

  echo "Creating symlink: $item → $target"
  ln -s "$item" "$target"
done

echo "All dotfiles and directories have been successfully symlinked."
