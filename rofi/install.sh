#!/bin/bash

set -e

echo "[+] Installing rofi..."

sudo pacman -Sy --noconfirm
sudo pacman -S --needed rofi papirus-icon-theme ttf-jetbrains-mono-nerd --noconfirm

echo "[+] Creating config directory..."
mkdir -p "$HOME/.config/rofi"

echo "[+] Linking config..."
ln -sf "$(pwd)/config.rasi" "$HOME/.config/rofi/config.rasi"

echo "[+] Done."

