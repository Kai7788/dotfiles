#!/bin/bash

set -e

echo "[+] Installing zathura..."

sudo pacman -Sy --noconfirm
sudo pacman -S --needed zathura zathura-pdf-mupdf ttf-jetbrains-mono-nerd --noconfirm

echo "[+] Creating config directory..."
mkdir -p "$HOME/.config/zathura"

echo "[+] Linking config..."
ln -sf "$(pwd)/zathurarc" "$HOME/.config/zathura/zathurarc"

echo "[+] Done."

