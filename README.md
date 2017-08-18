# Thanatcha's Dotfiles

__Nvim + Tmux + Zsh__

__This is my unix environment configuration__

Nvim will automatically install plugin with __:PlugInstall__ but you have to manually update plugin after awile with __:PlugUpdate__
  
`
  su
  
  pacman -S curl git git-flow neovim tmux zsh ttf-hack
  
  cd ~
  
  git clone https://github.com/thanatchakromsang/dotfiles.git ~/.dotfiles
  
  ln -s ~/.dotfiles/gitconfig ~/.gitconfig
  
  ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim

  ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

  ln -s ~/.dotfiles/fonts ~/.fonts
  
  fc-cache ~/.fonts
`

Setup Git, Git-flow, Nvim, Tmux, Zsh and Hack fonts

Nvim will automatically use Hack fonts

__Setting up oh my ZSH__

`
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  
  rm ~/.zshrc
  
  ln -s ~/.vim/zshrc ~/.zshrc
  
  chsh -s /bin/zsh 
`

After this process you need to restart one time for terminal to take effect

__Install Zsh Plugin__

`
  cd ~/.oh-my-zsh/custom/plugins
  
  git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
`

then you need to reload plugin

`
  source ~/.zshrc
`
