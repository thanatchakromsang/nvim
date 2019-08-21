#!/bin/bash

# Output colors
RED="\033[31m"
GREEN="\033[32m"
NORMAL="\033[0;39m"
CYAN="\033[36m"

symlink () {
  local location=$1
  local flag=$2

  stow --verbose=2 $flag -t $HOME $location

}

OS="$(uname -a)"
DOTFILES=$HOME/.dotfiles
STATE=$HOME/.dotstate

if [ -f "$STATE" ]; then
  echo -e "/////////////////////////////////"
  echo -e "// Unsymlinks using stow..     //"
  echo -e "/////////////////////////////////"

  case "$OS" in
    *Darwin*)
      symlink @macos -D
      symlink @general -D
      ;;
    *Linux*)
      symlink @linux -D
      symlink @general -D
      ;;
  esac

  # Remove dotfiles symlink state
  rm -f $STATE

  echo -e "/////////////////////////////////"
else
  echo -e "/////////////////////////////////"
  echo -e "// symlinks using stow..       //"
  echo -e "/////////////////////////////////"

  case "$OS" in
    *Darwin*)
      symlink @macos
      symlink @general
      ;;
    *Linux*)
      symlink @linux
      symlink @general
      ;;
  esac

  # Create dotfiles symlink state
  touch $STATE

  echo -e "/////////////////////////////////"
fi

