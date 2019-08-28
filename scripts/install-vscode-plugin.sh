#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles
source $DOTFILES/scripts/exists.sh

declare -a extensions=(
  ###
  # Sensible
  ###
  "vscodevim.vim"
  "eamodio.gitlens"
  "christian-kohler.path-intellisense"
  "VisualStudioExptTeam.vscodeintellicode"
  "CoenraadS.bracket-pair-colorizer"
  "EditorConfig.EditorConfig"

  ###
  # Programming Languages
  ###
  "ms-python.python"
  "redhat.java"
  "ms-vscode.Go"
  "jpogran.puppet-vscode"
  "ms-vscode.cpptools"
  "redhat.vscode-yaml"
  "Dart-Code.dart-code"
  "mauve.terraform"
  "DavidAnson.vscode-markdownlint"

  ###
  # Linter
  ###
  "dbaeumer.vscode-eslint"

  ###
  # Debugger
  ###
  "msjsdiag.debugger-for-chrome"

  ###
  # Etc.
  ###
  "quicktype.quicktype"
  "Gruntfuggly.todo-tree"
  "aaron-bond.better-comments"
  "HookyQR.beautify"
  "eg2.vscode-npm-script"
)

if exists code; then
  ext_list=$(code --list-extensions)
  for ext in "${extensions[@]}"
    do
      code --install-extension $ext --force
    done
else
  echo -e "Unable to find code"
  exit 0
fi
