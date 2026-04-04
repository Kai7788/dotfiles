#!/bin/bash

set -e

echo "[+] Installing i3 setup..."

sudo pacman -Sy --noconfirm
sudo pacman -S --needed i3-wm i3status i3lock rofi feh picom dunst dex kitty ttf-jetbrains-mono-nerd --noconfirm

echo "[+] Creating config directory..."
mkdir -p "$HOME/.config/i3"

echo "[+] Linking config..."
ln -sf "$(pwd)/config" "$HOME/.config/i3/config"

echo "[+] Done."

