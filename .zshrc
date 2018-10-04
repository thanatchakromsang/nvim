DOTFILES=$HOME/.dotfiles

if [[ -s "$DOTFILES/.zprezto/init.zsh" ]]; then
  source "$DOTFILES/.zprezto/init.zsh"
fi

# # Show startup logo only when appropriate
# if [[ $(tput cols) -gt 90 && $(tput lines) -gt 19 ]]; then
#   source $DOTFILES/zsh/startup.sh
# fi

source $DOTFILES/.aliases
source $DOTFILES/.zshenv

bindkey '^ ' autosuggest-accept
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey '^o' vi-forward-word
bindkey '^x' clear-screen

OS="$(uname -a)"

if [[ "$OS" =~ ^(Darwin)$ ]]; then
  export PATH="/usr/local/opt/node@8/bin:$PATH"
fi
