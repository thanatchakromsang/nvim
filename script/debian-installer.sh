#!/bin/bash

APT_TERMINAL="neovim zsh docker python-pip python-neovim htop npm ranger"
APT_GRAPHICAL=""
PIP=""

echo "#=================================#"
echo "# installing package apt-get      #"
echo "#=================================#"
echo

# Terminal packages installer
echo "install terminal package"
echo -n "answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo apt-get install $APT_TERMINAL
    sudo pip install $PIP
    echo "setup terminal packages complete"
    echo
else
    echo "aborted terminal packages setup"
    echo
fi

# Graphical packages installer
echo "install graphical package"
echo -n "answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo apt-get install $APT_GRAPHICAL
    echo "setup graphical packages complete"
    echo
else
    echo "aborted graphical packages setup"
    echo
fi
