#!/bin/sh
PACMAN_TERMINAL="curl git tmux zsh neovim python-pip python-neovim ctags htop npm docker"
PACMAN_GRAPHICAL="dunst compton rofi termite"
YAOURT_TERMINAL=""
YAOURT_GRAPHICAL="polybar clipmenu"
PIP="pipenv jedi"

echo "#=================================#"
echo "# Installing package Pacman       #"
echo "#=================================#"

# Terminal packages installer
echo "#=================================#"
echo "# install terminal package        #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo pacman -S $PACMAN_TERMINAL
    sudo pip install $PIP
    echo "# setup terminal packages complete"
else
    echo "# aborted terminal packages setup"
fi

# Graphical packages installer
echo "#=================================#"
echo "# install graphical package       #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo pacman -S $PACMAN_GRAPHICAL
    yaourt -S $YAOURT_GRAPHICAL
    echo "# setup graphical packages complete"
else
    echo "# aborted graphical packages setup"
fi
