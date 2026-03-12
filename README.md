# 🎋 Bamboo Forest: Fedora Sway Setup

![OS](https://img.shields.io/badge/OS-Fedora-blue?style=for-the-badge&logo=fedora)
![WM](https://img.shields.io/badge/WM-Sway-15539E?style=for-the-badge)
![Terminal](https://img.shields.io/badge/Terminal-Ghostty-2D353B?style=for-the-badge)

> A clean, organically styled Wayland environment built on Fedora Linux, featuring a custom Everforest/Bamboo aesthetic.

## 📸 Showcase

### The Desktop
![Desktop Showcase](.dotfiles-assets/desktop.png)

### Development Environment
![Terminal Workspace](.dotfiles-assets/ghostty.png)

### Menus & Overlay
<p align="center">
  <img src=".dotfiles-assets/rofi.png" width="48%" alt="Rofi Launcher" />
  <img src=".dotfiles-assets/wlogout.png" width="48%" alt="Wlogout Power Menu" />
</p>

## 🖥️ System Details

| Component | Choice |
| :--- | :--- |
| **OS** | Fedora Linux |
| **Window Manager** | Sway (Wayland) |
| **Status Bar** | Waybar |
| **Terminal** | Ghostty |
| **Editor** | Neovim (LazyVim) |
| **Application Launcher** | Rofi (Wayland fork) |
| **Power Menu** | wlogout |
| **Notifications** | Dunst |
| **Colour Theme** | Custom Bamboo / Everforest |

## 🎨 Colour Palette
This setup is built around a warm, custom earthy colour scheme designed to be harmonious and gentle on the eyes.

| Colour | Hex Code | Swatch |
| :--- | :--- | :--- |
| **Background** | `#252623` | ![](<https://placehold.co/15x15/252623/252623.png>) |
| **Foreground** | `#F1E9D2` | ![](<https://placehold.co/15x15/F1E9D2/F1E9D2.png>) |
| **Green** | `#8FB573` | ![](<https://placehold.co/15x15/8FB573/8FB573.png>) |
| **Yellow** | `#DBB651` | ![](<https://placehold.co/15x15/DBB651/DBB651.png>) |
| **Red** | `#E75A7C` | ![](<https://placehold.co/15x15/E75A7C/E75A7C.png>) |
| **Blue** | `#57A5E5` | ![](<https://placehold.co/15x15/57A5E5/57A5E5.png>) |
| **Magenta** | `#AAAAFF` | ![](<https://placehold.co/15x15/AAAAFF/AAAAFF.png>) |
| **Cyan** | `#70C2BE` | ![](<https://placehold.co/15x15/70C2BE/70C2BE.png>) |

## ⚙️ Installation
This repository is managed using a **bare Git repository**. There is no need for GNU Stow, symlinks, or moving files out of their native directories. 

**1. Clone the repository as a bare repo:**
```bash
git clone --bare [https://github.com/yourusername/dotfiles.git](https://github.com/yourusername/dotfiles.git) $HOME/.dotfiles
```

**2. Set up the temporary alias:**
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

**3. Checkout the actual files to your home directory:**
```bash
dotfiles checkout
```
*(Note: If Git throws an error about overwriting existing files, simply back those up or remove them, then run the checkout command again).*

**4. Ignore untracked files to keep your Git status clean:**
```bash
dotfiles config --local status.showUntrackedFiles no
```

## ⌨️ Keybindings
A quick reference for navigating this environment:

| Keybind | Action |
| :--- | :--- |
| `Super + T` | Open Ghostty |
| `Super + D` | Open Rofi |
| `Super + Shift + Q` | Kill focused window |
| `Super + [1-9]` | Switch to workspace [1-9] |
| `Super + Shift + C` | Reload Sway configuration |

## 🤝 Acknowledgements
* [SwayWM](https://swaywm.org/) for the incredible Wayland compositor.
* [Sainnhe](https://github.com/sainnhe/everforest) for the original Everforest colour palette inspiration.
