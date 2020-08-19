export DOTFILES=$HOME/.dotfiles
export ZSH="$HOME/.oh-my-zsh"

# # Show startup logo only when appropriate
# if [[ $(tput cols) -gt 90 && $(tput lines) -gt 19 ]]; then
#   source $DOTFILES/zsh/startup.sh
# fi
#

ZSH_THEME="spaceship"

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

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  kubectl_context
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thanatchaya.K/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thanatchaya.K/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thanatchaya.K/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thanatchaya.K/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
