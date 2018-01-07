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

#=============
# Delete existing dotfiles and folders
#=============

echo "#=================================#"
echo "# welcome to thanatcha's dotfiles #"
echo "#=================================#"
echo "# delete existing symlink (t)     #"
echo "#=================================#"
echo "# (t) = terminal (g) = graphical  #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o : "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
    sudo rm -rf ~/.zshrc > /dev/null 2>&1
    sudo rm -rf ~/.gitconfig > /dev/null 2>&1
    sudo rm -rf ~/.config/nvim > /dev/null 2>&1
    echo "# remove symlink terminal complete"
else
    echo "# aborted remove symlink terminal"
fi

echo "#=================================#"
echo "# delete existing symlink (g)     #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o : "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo rm -rf ~/.Xresources > /dev/null 2>&1
    sudo rm -rf ~/.config/i3 > /dev/null 2>&1
    sudo rm -rf ~/.config/dunst > /dev/null 2>&1
    sudo rm -rf ~/.config/termite > /dev/null 2>&1
    sudo rm -rf ~/.config/compton.conf > /dev/null 2>&1
    sudo rm -rf ~/.config/polybar > /dev/null 2>&1
    echo "# remove symlink graphical complete"
else
    echo "# aborted remove symlink graphical"
fi

echo "#=================================#"
echo "#  mkdir and create symlink (t)   #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o : "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    ln -sf $dotfiles/tmux/tmux.conf ~/.tmux.conf
    ln -sf $dotfiles/zsh/zshrc ~/.zshrc
    ln -sf $dotfiles/git/gitconfig ~/.gitconfig

    mkdir ~/.config/nvim
    ln -sf $dotfiles/nvim/init.vim ~/.config/nvim/init.vim
    echo "# symlink terminal complete"
else
    echo "# aborted symlink terminal"
fi

echo "#=================================#"
echo "# mkdir and create symlink (g)    #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o "

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
    echo "# symlink graphical complete"
else
    echo "# aborted symlink graphical"
fi

echo "#=================================#"
echo "# set zsh as a default shell      #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    chsh -s /bin/zsh
    ln -sf $dotfiles/zsh/themes ~/.oh-my-zsh/custom
    echo "# setup zsh complete"
else
    echo "# aborted zsh setup"
fi

echo "#=================================#"
echo "# install terminal fonts          #"
echo "#=================================#"
echo -n "# Answer 'y'es or 'n'o "

read REPLY
if [[ "$REPLY" == "y" ]]; then
    fc-cache ~/.fonts
    echo "# setup fonts complete"
else
    echo "# aborted fonts setup"
fi

