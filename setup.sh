#!/bin/bash
# Output colors
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

OS="$(uname -a)"
DOTFILES=$HOME/.dotfiles

case "$OS" in
  *Darwin*)
    source $DOTFILES/scripts/brew.sh
    ;;
  *arch*)
    source $DOTFILES/scripts/pacman.sh
    ;;
  *Ubuntu|Debian*)
    source $DOTFILES/scripts/apt.sh
    ;;
esac

source $DOTFILES/scripts/oh-my-zsh.sh

# remove default zshrc
rm -f $HOME/.zshrc
source $DOTFILES/stow.sh