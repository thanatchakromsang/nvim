#!/bin/sh

source $HOME/.dotfiles/scripts/exists.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Local variables
if exists nvim; then
  export VISUAL=nvim
else
  export VISUAL=vim
fi

export EDITOR=$VISUAL
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TERM=xterm-256color

export HISTCONTROL=ignoredups
export HISTFILESIZE=50000
export SSH_KEY_PATH="$HOME/.ssh"

# Program specific
if exists gcloud; then
  export CLOUDSDK_HOME=$CLOUDSDK_ROOT_DIR
fi

if exists nvm; then
  export NVM_DIR="$HOME/.nvm"
fi

if exists fzf; then
  export FZF_DEFAULT_OPTS='--height 100% --border --preview "[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (highlight -O ansi -l {} ||
                  coderay {} ||
                  rougify {} ||
                  cat {}) 2> /dev/null | head -500" --preview-window top'
  export FZF_DEFAULT_COMMAND='
    (git ls-tree -r --name-only HEAD ||
     find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
        sed s/^..//) 2> /dev/null'
fi

if exists snap; then
  export PATH="$HOME/.local/bin/:/snap/bin/:$PATH"
fi

# OS Specific
case "$(uname -a)" in
  *Darwin*)
    export PATH="/usr/local/bin/:$PATH"
    ;;
  *arch*)
    ;;
  *Ubuntu|Debian*)
    ;;
esac
