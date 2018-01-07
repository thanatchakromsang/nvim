#!/bin/sh

dotfiles=~/.dotfiles

echo "#=================================#"
echo "# welcome to packages installer   #"
echo "#=================================#"
echo
echo "install packages"
echo -n "answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    if [[ -x "/usr/bin/apt-get" ]]; then
        source $dotfiles/shell/script/debian-installer.sh
    elif [[ -x "/usr/bin/pacman" ]]; then
        source $dotfiles/shell/script/arch-installer.sh
    else
        echo "no installer for your os :("
        echo
        exit 0
    fi

    source $dotfiles/shell/script/oh-my-zsh-installer.sh

else
    echo "aborted packages installer"
    exit 0
fi
