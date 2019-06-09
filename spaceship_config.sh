#!/bin/bash

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
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
  pyenv         # Pyenv section
  conda         # conda virtualenv section
  dotnet        # .NET section
  ember         # Ember.js section
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
  node          # Node.js section
  aws           # Amazon Web Services section
  kubecontext   # Kubectl context section
  venv          # virtualenv section
)

SPACESHIP_KUBECONTEXT_SYMBOL="☸️ "
SPACESHIP_PACKAGE_SYMBOL=📦
SPACESHIP_DOCKER_SYMBOL=🐳
SPACESHIP_GIT_STATUS_DELETED=X
SPACESHIP_GIT_STATUS_AHEAD="⇡ "
SPACESHIP_GIT_STATUS_BEHIND="⇣ "
SPACESHIP_VENV_SYMBOL=' '
SPACESHIP_CHAR_SYMBOL="-> "

SPACESHIP_AWS_SHOW=true
SPACESHIP_AWS_PREFIX="using."
