# 🐧 Arch Linux Maintenance Scripts 🚀

Welcome to the **Arch Linux Maintenance Scripts** repository! 🎉 Here you will find two powerful scripts designed to make system updates, cleaning, and maintenance effortless on your Arch Linux setup. 💻✨

<div align="center">
  <img src="arch.svg" alt="Arch Linux Logo" />
</div>

---

## 📜 Scripts Overview

### 1⃣ **System Update and Package Installer**
📂 Script: `install_packages.sh`

This script ensures your Arch Linux system is up-to-date and installs a curated set of packages from the official repository and the AUR (Arch User Repository). 

🔧 **Features:**
- Updates the system packages with `pacman -Syu`.
- Installs a list of essential packages:
  - **From Official Repositories:** VLC, Thunderbird, Krita, LibreOffice, and more.
  - **From AUR:** Visual Studio Code.
- Automatically installs `yay` if it’s not already present for managing AUR packages. 🚀

🌟 **How to Use:**
```bash
bash install_packages.sh
```

🖼️ **Example:** Perfect for setting up a fresh Arch Linux installation or managing system software efficiently. 💾

---

### 2⃣ **System Maintenance and Cleaning**
📂 Script: `system_maintenance.sh`

This script performs routine system maintenance tasks to keep your Arch Linux environment clean and optimized. 🧹

🔧 **Features:**
- Updates the system packages with `pacman -Syu`.
- Removes orphaned and obsolete packages using `pacman -Rns`.
- Cleans the package cache with `pacman -Sc`.
- Deletes thumbnail cache files.
- Optimizes log file sizes with `journalctl --vacuum-size=40M`.
- Removes old package files with `paccache -r`.
- (Optional) Cleans up unused Flatpak dependencies and repairs Flatpak installations if Flatpak is installed.

🌟 **How to Use:**
```bash
bash system_maintenance.sh
```

🖼️ **Example:** Ideal for regular system maintenance, ensuring your Arch Linux system runs smoothly and efficiently. 💨

---

## 📥 Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/Clash-hun/arch-linux-maintenance-scripts.git
   ```
2. Navigate to the folder:
   ```bash
   cd arch-linux-maintenance-scripts
   ```
3. Run any script:
   ```bash
   bash <script_name>.sh
   ```

💡 **Pro Tip:** Run these scripts periodically to maintain your Arch Linux system in top-notch condition! 🛠️

---

## 🖌️ Screenshots & Visuals

![Arch Linux Logo](https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png)  
**Your system, streamlined and optimized!** 🎨

---

## 🌱 Why Use These Scripts?
- **Arch Linux Specific** 🐧
- **Automated System Management** 🤖
- **Improved Performance** ⚡

🌟 *Simplify your Arch Linux experience with these scripts!* ✨

---

## 🤝 Contributions

Feel free to fork this repository, suggest improvements, or share your feedback! 💙

---

## ☕ Support Me

If you find these scripts helpful, consider buying me a coffee! ☕

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-%23FFDD00.svg?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://paypal.me/clash2un?country.x=HU&locale.x=hu_HU)

---

Thank you for using my scripts! 😊 Happy Arching! 🎩✨
