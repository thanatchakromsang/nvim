#!/bin/bash

# Terminal packages
declare -a pkgs=("curl" "neovim" "python-pip" "python-neovim"
                "tmux" "ctags" "htop" "npm" "docker" "ranger"
                "zsh" "scrot")

for i in "${pkgs[@]}"
do
   sudo pacman -S "$i"
done

for i in "${pip[@]}"
do
   pip install -S "$i"
done

# Graphic packages
declare -a g_pkgs=("dunst" "compton" "rofi" "zathura")

if [[ $(program_is_installed X) -eq 1 ]]; then
  for i in "${g_pkgs[@]}"
  do
     sudo pacman -S "$i"
  done

  for i in "${g_yurt[@]}"
  do
    yaourt -S "$i" --noconfirm
  done
fi

declare -a pip=("pipenv" "jedi")

