#!/bin/bash

# Function to install AUR packages as normal user
install_aur_packages() {
    echo "Installing AUR packages (Visual Studio Code)..."
    yay -S --noconfirm --needed visual-studio-code-bin
}

# System update and official package installation needs root
if [ "$EUID" -ne 0 ]; then
    echo "Administrator rights are required for system packages. Please enter your password:"
    sudo bash -c '
    echo "Updating packages..."
    pacman -Syu --noconfirm

    # Install official packages
    packages=(
        vlc
        qbittorrent
        krita
        inkscape
        openshot
        libreoffice-fresh-hu
        ristretto
        xfburn
        thunderbird
        feathernotes
        jdk-openjdk
        samba
        firewalld
        python-pyqt5
        bluez-obex
    )

    echo "Installing packages from the official repository..."
    for package in "${packages[@]}"; do
        pacman -S --noconfirm --needed "$package"
    done'

    # Check and install yay as normal user
    if ! command -v yay &> /dev/null; then
        echo "Installing yay..."
        git clone https://aur.archlinux.org/yay.git
        cd yay || exit
        makepkg -si --noconfirm
        cd ..
        rm -rf yay
    fi

    # Install AUR packages as normal user
    install_aur_packages
else
    echo "Please run this script as a normal user, not as root"
    exit 1
fi

echo "Installation complete!"


