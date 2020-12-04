#!/bin/bash

# Add us workman and th pattachote as keyboard layout
localectl --no-convert set-x11-keymap us,th pc104 workman,pat grp:win_space_toggle

# Terminal packages
declare -a pkgs=("curl"
		             "dhcpcd"
                 "htop"
                 "npm"
                 "zsh"
                 "tig"
                 "bat"
                 "exa"
                 "rustup"
                 "stow"
                 "w3m"
                 "ripgrep"
                 "watchman"
                 "xautolock"
                 "xclip"
                 "terraform"

                 "docker"
                 "kubectl"
                 "helm"

                 "go"
                 "gcc"
                 "make"

                 "neovim"
                 "python-pip"
                 "python-neovim"
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
                   "arandr"

                   # Fonts
                   "ttf-dejavu"
                   )

declare -a aur_pkgs=("zsh-plugin-wd-git"
                     "lazydocker"
                     "lazygit"
                     "polybar"
                     "networkmanager-dmenu-git"

                     # Fonts
                     "fonts-tlwg"
                    )

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

sudo pacman -S ttf-fira-code
