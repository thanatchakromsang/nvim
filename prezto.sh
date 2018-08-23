#!/bin/zsh
DOTFILES=$HOME/.dotfiles

setopt EXTENDED_GLOB
for rcfile in "$DOTFILES"/.zprezto/runcoms/^README.md(.N); do
  [[ $(basename $rcfile) == "zshrc" || $(basename $rcfile) == "zpreztorc" ]] || (echo -n "  linking $rcfile  " && ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}")
done

echo -n "  linking dotfiles/.zshrc  " && ln -s $DOTFILES/.zshrc $HOME/.zshrc && echo ""
echo -n "  linking dotfiles/.zpreztorc  " && ln -s $DOTFILES/.zpreztorc $HOME/.zpreztorc && echo ""

exit 0
