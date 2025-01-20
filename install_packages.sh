#!/bin/bash

# Check if the script is run as root; if not, request sudo
if [ "$EUID" -ne 0 ]; then
  echo "Administrator rights are required. Please enter your password:"
  exec sudo "$0" "$@"
fi

echo "Updating packages..."
pacman -Syu --noconfirm

# List of packages to be installed
packages=(
  vlc
  qbittorrent
  krita
  inkscape
  openshot
  libreoffice-fresh-hu
  xviewer
  xfburn
  thunderbird
  jdk-openjdk
  samba
  firewalld
  python-pyqt5
  bluez-obex
)

echo "Installing packages from the official repository..."
for package in "${packages[@]}"; do
  pacman -S --noconfirm --needed "$package"
done

echo "Checking if yay is installed..."
if ! command -v yay &> /dev/null; then
  echo "Installing yay..."
  git clone https://aur.archlinux.org/yay.git
  cd yay || exit
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
fi

echo "Installing AUR packages (Visual Studio Code)..."
yay -S --noconfirm --needed visual-studio-code-bin

echo "Installation complete!"


