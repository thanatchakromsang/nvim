#!/bin/sh
dotfiles=~/.dotfiles

echo "#=================================#"
echo "# welcome to thanatcha's dotfiles #"
echo "#=================================#"
echo
echo "Install packages '1'"
echo "Symlink files '2'"
echo -n "answer : "

read REPLY
if [[ "$REPLY" == "1" ]]; then
    echo
    source $dotfiles/shell/script/install-packages.sh
elif [[ "$REPLY" == "2" ]]; then
    echo
    source $dotfiles/shell/script/symlinks.sh
else
    echo "abort dotfiles installation"
    exit 0
fi
