#!/bin/bash

echo "[+] Installing zsh setup..."

sudo pacman -Sy --noconfirm
sudo pacman -S --needed zsh zsh-autosuggestions zsh-syntax-highlighting --noconfirm

echo "[+] Creating symlink..."
ln -sf "$(pwd)/.zshrc" "$HOME/.zshrc"

echo "[+] Done!"
