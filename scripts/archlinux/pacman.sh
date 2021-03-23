#!/bin/bash

# TODO: reclassify pkgs
# Terminal packages
declare -a pkgs=(
  "curl"
  "sudo"
  "networkmanager"
  "pacman-contrib"
  "inetutils"
  "unzip"

  "htop"
  "yarn"
  "zsh"

  "tig"
  "fd"
  "bat"
  "exa"
  "ranger" "ueberzug"
  "stow"
  "fzf"
  "lastpass-cli"
  "ripgrep"
  "wl-clipboard"
  "terraform"
  "openssh"

  "yq"
  "jq"

  # Bluetooth related packages
  "bluez" "bluez-utils"

  "rustup"

  # Network Utility
  "bind"

  "go"
  "gcc"
  "make"

  "python-pip"
  "python-neovim"

  "virtualbox"

  "playerctl"

  "lua-language-server" # aur
  "rust-analyzer"
  "terraform-ls"
  "gopls"
)

# Graphic packages
declare -a g_pkgs=(
  "zathura"
  "zathura-pdf-mupdf"
  "ranger"
  "kitty"
  "pipewire"
  "libpipewire02" # TODO: Remove when Chromium support pipewire 0.3
  "xdg-desktop-portal-wlr"
  "telegram-desktop"

  "light"
  "gammastep"

  "grim"
  "slurp"

  "sway"
  "swaybg"
  "waybar"
  "wf-recorder"
  "swayidle"
  "swaylock"

  "mako" # Notification daemon

  # Sound
  "pavucontrol"
  "pulseaudio-bluetooth"
  "pulseaudio"

  # Fonts
  "ttf-dejavu"
  "noto-fonts-emoji"

  "polkit"
  "polkit-gnome"
)

declare -a aur_pkgs=(
  "zsh-plugin-wd-git"
  "lazydocker"
  "lazygit"
  "pet-bin"
  "rofi-lbonn-wayland-git"
  "grimshot"
  "networkmanager-dmenu-git"
  "rofi-bluetooth-git"
  "bitwarden-rofi-git"

  "git-secret"

  "wdisplays"

  "google-chrome"

  "neovim-git"

  # Fonts
  "fonts-tlwg"
  "nerd-fonts-hack"
)

declare -a kube_pkgs=(
  "docker"
  "docker-compose"

  "kubectl"
  "helm"
  "krew-bin"
  "kind-bin"
  "kubeseal"
  "kubefwd-bin"
  "flux-bin"
)

yay -Syu ${pkgs[@]} ${g_pkgs[@]} ${aur_pkgs[@]} ${kube_pkgs[@]} --noconfirm --needed
