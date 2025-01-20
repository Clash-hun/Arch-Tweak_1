#!/bin/bash

echo "Starting system maintenance and cleaning..."

# Update system packages
echo "Updating packages..."
sudo pacman -Syu --noconfirm

# Remove obsolete packages
echo "Removing obsolete packages..."
sudo pacman -Rns $(pacman -Qtdq) --noconfirm 2>/dev/null || echo "No orphaned packages to remove."

# Clear package cache
echo "Clearing package cache..."
sudo pacman -Sc --noconfirm

# Clear thumbnail cache
echo "Clearing the thumbnails cache..."
rm -rfv ~/.cache/thumbnails

# Optimize log file sizes
echo "Optimizing the size of logs..."
sudo journalctl --vacuum-size=40M

# Delete old package files
echo "Deleting old package files..."
paccache -r --noconfirm

# (Optional) Flatpak cleanup
if command -v flatpak &> /dev/null; then
  echo "Removing unused Flatpak dependencies..."
  flatpak uninstall --unused -y
  echo "Repairing Flatpak..."
  flatpak repair -y
fi

echo "System maintenance completed!"

