#!/bin/bash

echo "[+] Updating pacman..."
sudo pacman -Sy --noconfirm

echo "[+] Installing feh..."
sudo pacman -S feh --noconfirm

echo "[+] Done. You can now run 'feh <image_file>' to view images."
