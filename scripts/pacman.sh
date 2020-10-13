#!/bin/bash

# Add us workman and th pattachote as keyboard layout
localectl --no-convert set-x11-keymap us,th pc104 workman,pat grp:win_space_toggle,caps:escape

# Terminal packages
declare -a pkgs=("curl"
                 "neovim"
                 "python-pip"
                 "python-neovim"
                 "tmux"
                 "htop"
                 "npm"
                 "docker"
                 "ranger"
                 "zsh"
                 "scrot"
                 "tig"
                 "bat"
                 "rustup"
                 "stow"
                 "w3m"
                 "ripgrep"
                 "watchman"
                 )

# Graphic packages
declare -a g_pkgs=("dunst"
                   "compton"
                   "rofi"
                   "zathura"
                   "zathura-pdf-mupdf"
                   "kubectl"
                   "helm"
                   "maim"
                   "kitty"
                   )

declare -a aur_pkgs=("zsh-plugin-wd-git")

#if [[ $(program_is_installed X) -eq 1 ]]; then
  for i in "${g_pkgs[@]}"
  do
    sudo pacman -S "$i"
  done

  for i in "${pkgs[@]}"
  do
    sudo pacman -S "$i"
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
