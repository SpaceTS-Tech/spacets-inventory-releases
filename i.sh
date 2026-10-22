#!/bin/sh
set -e
U="https://github.com/SpaceTS-Tech/spacets-inventory-releases/releases/download/1.4.7-linux/s.deb"
echo "Downloading SpaceTS Inventory 1.4.7..."
wget -O /tmp/s.deb "$U"
echo "Installing SpaceTS Inventory..."
sudo apt install -y /tmp/s.deb
if [ -d "$HOME/Desktop" ] && [ -f /usr/share/applications/spacets-inventory.desktop ]; then
  cp /usr/share/applications/spacets-inventory.desktop "$HOME/Desktop/"
  chmod +x "$HOME/Desktop/spacets-inventory.desktop"
fi
echo "Done! Run 'spacets-inventory' or launch from your Applications menu."
