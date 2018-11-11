export DOTFILES=$HOME/.dotfiles

if [[ -s "$DOTFILES/.zprezto/init.zsh" ]]; then
  source "$DOTFILES/.zprezto/init.zsh"
fi

# # Show startup logo only when appropriate
# if [[ $(tput cols) -gt 90 && $(tput lines) -gt 19 ]]; then
#   source $DOTFILES/zsh/startup.sh
# fi
#

source $DOTFILES/.aliases
source $DOTFILES/.zshenv

# bind alt meta
bindkey '^[k' clear-screen

# bind ctrl meta
bindkey '^ ' autosuggest-accept
bindkey '^p' up-line-or-search
bindkey '^n' down-line-or-search
bindkey '^o' vi-forward-word

OS="$(uname -a)"

if [[ "$OS" =~ ^(Darwin)$ ]]; then
  export PATH="/usr/local/opt/node@8/bin:$PATH"
fi

function prompt_sorin_preexec {
  node-info
}
