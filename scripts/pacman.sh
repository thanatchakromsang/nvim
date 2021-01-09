#!/bin/bash

# Add us workman and th pattachote as keyboard layout
localectl --no-convert set-x11-keymap us,th pc104 workman,pat grp:win_space_toggle

# Terminal packages
declare -a pkgs=("curl"
                 "networkmanager"
                 "xautolock"

                 "htop"
                 "npm"
                 "zsh"
                 "tig"
                 "bat"
                 "exa"
                 "rustup"
                 "stow"
                 "w3m"
                 "fzf"
                 "lastpass-cli"
                 "ripgrep"
                 "watchman"
                 "xclip"
                 "terraform"
                 "openssh"

                 "yq"
                 "jq"

                 "docker"
                 "kubectl"
                 "helm"
                 "minikube"

                 # Bluetooth related packages
                 "bluez"
                 "bluez-utils"

                 "go"
                 "gcc"
                 "make"

                 "neovim"
                 "python-pip"
                 "python-neovim"

                 "virtualbox"

                 "playerctl"
                 )

# Graphic packages
declare -a g_pkgs=("dunst"
                   "rofi"
                   "zathura"
                   "zathura-pdf-mupdf"
                   "ranger"
                   "maim"
                   "kitty"
                   "chromium"
                   "simplescreenrecorder"
                   "feh"

                   # XServer
                   "xorg-server"
                   "xorg-xinit"
                   "arandr"
                   "i3-gaps"

                   # Sound
                   "pavucontrol"
                   "pulseaudio-bluetooth"
                   "pulseaudio"

                   # Fonts
                   "ttf-dejavu"

                   "polkit"
                   "polkit-gnome"
                   )

declare -a aur_pkgs=("zsh-plugin-wd-git"
                     "lazydocker"
                     "lazygit"
                     "polybar"
                     "networkmanager-dmenu-git"
                     "pet-bin"

                     "rofi-bluetooth-git"

                     # Fonts
                     "fonts-tlwg"
                     "nerd-fonts-hack"

                     "terraform-ls"
                    )

#if [[ $(program_is_installed X) -eq 1 ]]; then
  for i in "${g_pkgs[@]}"
  do
    sudo pacman -S "$i" --noconfirm
  done

  for i in "${pkgs[@]}"
  do
    sudo pacman -S "$i" --noconfirm
  done

  for i in "${aur_pkgs[@]}"
  do
    yay -S --noconfirm "$i"
  done
#fi

## pip
#declare -a pip=("pipenv" "jedi")
#
#for i in "${pip[@]}"
#do
#   pip install -S "$i"
#done

npm config set prefix $HOME/.local
