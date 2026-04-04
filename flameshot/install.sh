#!/bin/bash

set -e

echo "[+] Installing flameshot..."

sudo pacman -Sy --noconfirm
sudo pacman -S --needed flameshot --noconfirm

echo "[+] Creating config directory..."
mkdir -p "$HOME/.config/flameshot"

echo "[+] Linking config..."
ln -sf "$(pwd)/flameshot.ini" "$HOME/.config/flameshot/flameshot.ini"

echo "[+] Done."

