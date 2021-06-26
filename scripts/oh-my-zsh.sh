#!/bin/bash

ZSH_CUSTOM="$HOME/.oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/custom/plugins/zsh-syntax-highlighting"

git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM/custom/plugins/zsh-autosuggestions"

sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

chsh -s "$(which zsh)"
