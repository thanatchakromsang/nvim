export DOTFILES=$HOME/.dotfiles
export ZSH="$HOME/.oh-my-zsh"

# # Show startup logo only when appropriate
# if [[ $(tput cols) -gt 90 && $(tput lines) -gt 19 ]]; then
#   source $DOTFILES/zsh/startup.sh
# fi
#

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  yarn
  docker
  node
  npm
  tig
  kubectl
  dotenv
  wd
  fzf
  helm
  rust
)

OS="$(uname -a)"
case "$OS" in
  *Darwin*)
    source /etc/profile
  ;;
esac

# source $DOTFILES/spaceship_config.sh
source $ZSH/oh-my-zsh.sh

# source useful script
source $DOTFILES/scripts/exists.sh

source $DOTFILES/@general/.aliases
source $DOTFILES/@general/.zshenv

# bind alt meta
bindkey '^[k' clear-screen

# bind ctrl meta
bindkey '^ ' autosuggest-accept

# bindkey '^M' autosuggest-execute
bindkey '^p' up-line-or-beginning-search
bindkey '^n' down-line-or-beginning-search
bindkey '^o' vi-forward-word
bindkey '^H' backward-kill-word

# Pet binding
function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}

function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon

bindkey '^s' pet-select

set -o ignoreeof

# fzf function

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
f() {
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0 --preview "([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200"))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# fd - Find any directory and cd to selected directory
fd() {
 local dir
 dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d \
      -print 2> /dev/null | fzf +m) &&
 cd "$dir"
}

fw() {
  IFS=$'\n' files=($(rg -i -l "$1" | fzf --preview "([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200"))

  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

if [ -f '/Users/thanatchaya.K/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source "$HOME/Downloads/google-cloud-sdk/path.zsh.inc"; fi
if [ -f '/Users/thanatchaya.K/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc"; fi
