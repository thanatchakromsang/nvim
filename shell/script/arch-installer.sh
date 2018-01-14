#!/bin/bash
PACMAN_TERMINAL="curl tmux zsh neovim python-pip python-neovim ctags htop npm docker ranger"
PACMAN_GRAPHICAL="dunst compton rofi termite"
YAOURT_TERMINAL=""
YAOURT_GRAPHICAL="polybar clipmenu"
PIP="pipenv jedi"

echo "#=================================#"
echo "# installing package pacman       #"
echo "#=================================#"
echo

# Terminal packages installer
echo "install terminal package"
echo -n "answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo pacman -S $PACMAN_TERMINAL
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
    sudo pacman -S $PACMAN_GRAPHICAL
    yaourt -S $YAOURT_GRAPHICAL
    echo "setup graphical packages complete"
else
    echo "aborted graphical packages setup"
fi
