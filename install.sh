#!/bin/sh
################################################################################
#
#             NOTES: For this to work you must have cloned the github
#                    repo to your home folder as ~/.dotfiles/
#
################################################################################

#=============
#  Variable
#=============

dotfiles=~/.dotfiles
log=~/.install_progress.log.txt

#=============
# Delete existing dotfiles and folders
#=============

echo "#=================================#"
echo "# Welcome to thanatcha's dotfiles #"
echo "#=================================#"
echo "# [1] delete existing symlink     #"
echo "#=================================#"
echo -n "# Answer 'y'es or 'n'o : "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo rm -rf ~/.tmux.confg > /dev/null 2>&1
    sudo rm -rf ~/.zshrc > /dev/null 2>&1
    sudo rm -rf ~/.gitconfig > /dev/null 2>&1
    sudo rm -rf ~/.config/nvim > /dev/null 2>&1
    echo "Finished [1]!"
else
    echo "Aborted [1]!"
fi

echo "#=================================#"
echo "# [2] delete existing i3 symlink  #"
echo "#=================================#"
echo -n "# Answer 'y'es or 'n'o "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo rm -rf ~/.Xresources > /dev/null 2>&1
    sudo rm -rf ~/.config/i3 > /dev/null 2>&1
    sudo rm -rf ~/.config/dunst > /dev/null 2>&1
    sudo rm -rf ~/.config/termite > /dev/null 2>&1
    sudo rm -rf ~/.config/compton.conf > /dev/null 2>&1
    sudo rm -rf ~/.config/polybar > /dev/null 2>&1
    echo "Finished [2]!"
else
    echo "Aborted [2]!"
fi

echo "#=================================#"
echo "# [3] mkdir and create symlink    #"
echo "#=================================#"
echo -n "# Answer 'y'es or 'n'o "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    ln -sf $dotfiles/tmux/tmux.conf ~/.tmux.conf
    ln -sf $dotfiles/zsh/zshrc ~/.zshrc
    ln -sf $dotfiles/git/gitconfig ~/.gitconfig

    mkdir ~/.config/nvim
    ln -sf $dotfiles/nvim/init.vim ~/.config/nvim/init.vim
    echo "Finished [3]!"
else
    echo "Aborted [3]!"
fi

echo "#=================================#"
echo "# [4] mkdir and create symlink i3 #"
echo "#=================================#"
echo -n "# Answer 'y'es or 'n'o "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    ln -sf $dotfiles/xorg/Xresources ~/.Xresources
    ln -sf $dotfiles/fonts ~
    ln -sf $dotfiles/i3/compton/compton.conf ~/.config/compton.conf
    ln -sf $dotfiles/i3/i3/ ~/.config
    ln -sf $dotfiles/i3/dunst/dunstrc ~/.config
    ln -sf $dotfiles/i3/polybar ~/.config
    ln -sf $dotfiles/termite ~/.config
    i3-msg restart
    xrdb -merge ~/.Xresources
    echo "Finished [4]!"
else
    echo "Aborted [4]!"
fi

echo "#=================================#"
echo "# [5] Set zsh as a default shell  #"
echo "#=================================#"
echo -n "# Answer 'y'es or 'n'o "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    chsh -s /bin/zsh
    echo "Finished [5]!"
else
    echo "Aborted [5]!"
fi

echo "#=================================#"
echo "# [6] Install terminal font       #"
echo "#=================================#"
echo -n "# Answer 'y'es or 'n'o "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    fc-cache ~/.fonts
    echo "Finished [6]!"
else
    echo "Aborted [6]!"
fi

