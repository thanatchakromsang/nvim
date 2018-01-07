#!/bin/sh

# script path
dotfiles=~/.dotfiles

echo "#=================================#"
echo "# welcome to thanatcha's dotfiles #"
echo "#=================================#"
echo "# install package                 #"
echo "#=================================#"

echo -n "# answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    if [[ -x "/usr/bin/apt-get" ]]; then
        source $dotfiles/shell/script/debian-installer.sh
    elif [[ -x "/usr/bin/pacman" ]]; then
        source $dotfiles/shell/script/arch-installer.sh
    else
        echo "no installer for your os :("
        exit 0
    fi

    source $SCRIPT/oh-my-zsh-installer.sh

else
    echo "# aborted package setup"
    exit 0
fi
