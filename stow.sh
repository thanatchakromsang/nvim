#!/bin/bash

# Output colors
RED="\033[31m"
GREEN="\033[32m"
NORMAL="\033[0;39m"
CYAN="\033[36m"

echo -e "$RED Start symlinks using stow.. $CYAN"
echo -e "////////////////////////////////////////"
echo -e "//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//"
echo -e "////////////////////////////////////////"
echo -e "$NORMAL"

stow --verbose=2 .config -t $HOME/.config

echo -e "$CYAN"
echo -e "////////////////////////////////////////"
echo -e "//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//"
echo -e "////////////////////////////////////////"
echo -e "$GREEN Finish symlinks $NORMAL"
