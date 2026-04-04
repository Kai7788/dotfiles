#!/bin/bash

echo "[+] Updating pacman..."
sudo pacman -Sy --noconfirm

echo "[+] Installing mpv..."
sudo pacman -S mpv --noconfirm

echo "[+] Done. You can now run 'mpv <video_file>' to play videos."
