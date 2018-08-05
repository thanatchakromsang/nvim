# source files
source $HOME/.dotfiles/zsh/env #environment variables

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source $DOTFILES/zsh/aliases #alias
# Show startup logo only when appropriate
if [[ $(tput cols) -gt 90 && $(tput lines) -gt 19 ]]; then
  source $DOTFILES/zsh/startup.sh
fi

bindkey '^ ' autosuggest-accept
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey '^o' vi-forward-word
