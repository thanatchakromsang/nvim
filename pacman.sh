#!/bin/bash

# Terminal packages
declare -a pkgs=("curl"
                 "neovim"
                 "python-pip"
                 "python-neovim"
                 "tmux"
                 "ctags"
                 "htop"
                 "npm"
                 "docker"
                 "ranger"
                 "zsh"
                 "scrot"
                 "tig"
                 "bat"
                 "z"
                 )

for i in "${pkgs[@]}"
do
   sudo pacman -S "$i"
done

# Graphic packages
declare -a g_pkgs=("dunst" "compton" "rofi" "zathura", "kubectl", "kubectx")

if [[ $(program_is_installed X) -eq 1 ]]; then
  for i in "${g_pkgs[@]}"
  do
     sudo pacman -S "$i"
  done

  for i in "${g_yurt[@]}"
  do
    yay -S --noconfirm "$i"
  done
fi

# pip
declare -a pip=("pipenv" "jedi")

for i in "${pip[@]}"
do
   pip install -S "$i"
done

