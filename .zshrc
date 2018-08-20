# source files
DOTFILES=$HOME/.dotfiles
source $DOTFILES/.env #environment variables
source $DOTFILES/.aliases

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Show startup logo only when appropriate
if [[ $(tput cols) -gt 90 && $(tput lines) -gt 19 ]]; then
  source $DOTFILES/zsh/startup.sh
fi

bindkey '^ ' autosuggest-accept
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey '^o' vi-forward-word

OS="$(uname -a)"

if [[ "$OS" =~ ^(Darwin)$ ]]; then
  export PATH="/usr/local/opt/node@8/bin:$PATH"
fi
