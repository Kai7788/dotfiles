#!/bin/bash

set -e

echo "[+] Installing redshift..."

sudo pacman -Sy --noconfirm
sudo pacman -S --needed redshift --noconfirm

echo "[+] Creating config directory..."
mkdir -p "$HOME/.config/redshift"

echo "[+] Linking config..."
ln -sf "$(pwd)/redshift.conf" "$HOME/.config/redshift/redshift.conf"

echo "[+] Enabling autostart..."
mkdir -p "$HOME/.config/autostart"

cat > "$HOME/.config/autostart/redshift.desktop" <<EOF
[Desktop Entry]
Type=Application
Exec=redshift
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Redshift
EOF

echo "[+] Done."

