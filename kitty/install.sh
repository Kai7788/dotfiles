#!/bin/bash

set -e

echo "[+] Installing kitty..."

sudo pacman -Sy --noconfirm
sudo pacman -S --needed kitty ttf-jetbrains-mono-nerd --noconfirm

echo "[+] Creating config directory..."
mkdir -p "$HOME/.config/kitty"

echo "[+] Linking config..."
ln -sf "$(pwd)/kitty.conf" "$HOME/.config/kitty/kitty.conf"

echo "[+] Done."

