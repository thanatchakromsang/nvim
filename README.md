# Thanatcha's Dotfiles

__Nvim + Tmux + Zsh + Termite Terminal__

__This is my unix environment configuration__

Install dependencies, package

```
  sudo pacman -S curl git git-flow neovim tmux zsh termite pip ctags
```
Upgrade Neovim
```
  sudo pip install jedi
  sudo pip3 install --user --upgrade neovim
```

Nvim will automatically install plugin with __:PlugInstall__ but you have to manually update plugin after awile with __:PlugUpdate__
  
```
  cd ~
  
  git clone https://github.com/thanatchakromsang/dotfiles.git ~/.dotfiles
  
  ln -s ~/.dotfiles/gitconfig ~/.gitconfig
  
  mkdir ~/.config/nvim
  
  ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim
  
  ln -s ~/.dotfiles/colors ~/.config/nvim/colors

  ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

  ln -s ~/.dotfiles/fonts ~/.fonts
  
  mkdir ~/.config/termite/
  
  ln -s ~/.dotfiles/termite-config ~/.config/termite/config
  
  fc-cache ~/.fonts
```

Setup Git, Git-flow, Nvim, Tmux, Zsh and Hack fonts

No need to config terminal unless fonts in nvim don't show up because nvim will automatically use hack fonts

__Setting up oh my ZSH__

```
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  
  rm ~/.zshrc
  
  ln -s ~/.dotfiles/zshrc ~/.zshrc
  
  chsh -s /bin/zsh 
```

After this process you need to restart one time for terminal to take effect

__Install Zsh Plugin__

```
  cd ~/.oh-my-zsh/custom/plugins
  
  git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

then you need to reload plugin

```
  source ~/.zshrc
```
if reload plugin error change .zshrc path to /home/{pc-name}/.oh-my-zsh

__Tidy your os__

change npm path to no use no sudo instead

```
  npm config set prefix ~/.local
```
