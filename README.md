# Thanatcha's Dotfiles

My universal dotfiles for every linux machine
- nvim configs (mainly python, javascript)
- tmux configs
- zsh config + alias
- i3wm configs (polybar, dunst, compton, xresources)
- etc.

## __Install dependencies__

<details>
<summary>Archlinux</summary>

Install necessary packages
```
  sudo pacman -S curl git tmux zsh termite python-pip python-neovim ctags
```
Upgrade Neovim
```
  sudo pip3 install --user --upgrade neovim

  sudo pip3 install jedi
```

Neovim will automatically install plugin with __:PlugInstall__ but you have to manually update plugin after awile with __:PlugUpdate__
</details>

<details>
<summary>MacOS</summary>

```
  No detail
```
</details>

## Symlink configurations

```
  git clone https://github.com/thanatchakromsang/dotfiles.git ~/.dotfiles

  ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
```
<details>
<summary>Neovim, Zsh, tmux</summary>

```
  mkdir ~/.config/nvim

  ln -s ~/.dotfiles/vim/init.vim ~/.config/nvim/init.vim

  ln -s ~/.dotfiles/vim/colors ~/.config/nvim/colors

  ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

```
</details>

<details>
<summary>Setting up oh my ZSH</summary>

```
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.zsh | zsh

  rm ~/.zshrc

  ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

  chsh -s /bin/zsh
```

Install Zsh Plugin

```
  cd ~/.oh-my-zsh/custom/plugins

  git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

Reload Zsh Plugin

```
  source ~/.zshrc
```
</details>

<details>
<summary>Fonts, Terminal</summary>

```
  mkdir ~/.config/termite/

  ln -s ~/.dotfiles/fonts ~/.fonts

  ln -s ~/.dotfiles/termite/config ~/.config/termite/config

  fc-cache ~/.fonts
```
</details>

## Miscellaneous config

<details>
<summary>NPM</summary>

Change global npm path per user

```
  npm config set prefix ~/.local
```
</details>

## Key Bindings

<details>
<summary>Vim</summary>

Commands | Descriptions
--- | ---
`:cd <path>` | Open path */path*
<kbd>Ctrl</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd> | Navigate via split panels
<kbd>Ctrl</kbd> + <kbd>w</kbd><kbd>w</kbd> | Alternative navigate vim split panels
<kbd>,</kbd><kbd>.</kbd> | Set path working directory
<kbd>,</kbd><kbd>w</kbd> or <kbd>,</kbd><kbd>x</kbd> | Next buffer navigate
<kbd>,</kbd><kbd>q</kbd> or <kbd>,</kbd><kbd>z</kbd> | previous buffer navigate
<kbd>T</kbd> | Create a tab
<kbd>tab</kbd> | next tab navigate
<kbd>Shift</kbd> + <kbd>tab</kbd> | previous tab navigate
<kbd>,</kbd><kbd>e</kbd> | Find and open files
<kbd>,</kbd><kbd>t</kbd><kbd>e</kbd> | Find and open files in new tab
<kbd>,</kbd><kbd>B</kbd> | Find file on buffer (open file)
<kbd>,</kbd><kbd>c</kbd> | Close active buffer (close file)
<kbd>F2</kbd>  | Open tree navigate in actual opened file
<kbd>F3</kbd>  | Open/Close tree navigate files
<kbd>F4</kbd> | List all class and method, support for python and php using ctags
<kbd>,</kbd><kbd>v</kbd> | Split vertical
<kbd>,</kbd><kbd>b</kbd> | Split horizontal
<kbd>,</kbd><kbd>f</kbd> | Search in the project
<kbd>,</kbd><kbd>o</kbd> | Open github file/line (website), if used git in **github**
<kbd>,</kbd><kbd>s</kbd><kbd>h</kbd> | Open terminal inside vim
<kbd>,</kbd><kbd>g</kbd><kbd>a</kbd> | Execute *git add* on current file
<kbd>,</kbd><kbd>g</kbd><kbd>c</kbd> | git commit (splits window to write commit message)
<kbd>,</kbd><kbd>g</kbd><kbd>s</kbd><kbd>h</kbd> | git push
<kbd>,</kbd><kbd>g</kbd><kbd>l</kbd><kbd>l</kbd> | git pull
<kbd>,</kbd><kbd>g</kbd><kbd>s</kbd> | git status
<kbd>,</kbd><kbd>g</kbd><kbd>b</kbd> | git blame
<kbd>,</kbd><kbd>g</kbd><kbd>d</kbd> | git diff
<kbd>,</kbd><kbd>g</kbd><kbd>r</kbd> | git remove
<kbd>,</kbd><kbd>s</kbd><kbd>o</kbd> | Open Session
<kbd>,</kbd><kbd>s</kbd><kbd>s</kbd> | Save Session
<kbd>,</kbd><kbd>s</kbd><kbd>d</kbd> | Delete Session
<kbd>,</kbd><kbd>s</kbd><kbd>c</kbd> | Close Session
<kbd>></kbd> | indent to right
<kbd><</kbd> | indent to left
<kbd>g</kbd><kbd>c</kbd> | Comment or uncomment lines that {motion} moves over
<kbd>g</kbd><kbd>f</kbd> | Open file under cursor (absolute path or relative)
<kbd>Y</kbd><kbd>Y</kbd> | Copy to clipboard
<kbd>,</kbd><kbd>p</kbd> | Paste
<kbd>Ctrl</kbd> + <kbd>e</kbd> | Activate Emmet plugin
<kbd>gg</kbd> | Move to first line in file
<kbd>G</kbd> | Move to last line in file
<kbd>,</kbd><kbd>space</kbd> | Clean search highlight
<kbd>tab</kbd> | Expand UltiSnips
<kbd>tab</kbd> | Jump forward after trigger UltiSnips
<kbd>Ctrl</kbd> + <kbd>b</kbd> | Jump backward after trigger UltiSnips
<kbd>s</kbd> | Easymotion by characters
<kbd>,</kbd><kbd>j</kbd> | Easymotion line lower
<kbd>,</kbd><kbd>k</kbd> | Easymotion line upper
<kbd>,</kbd><kbd>n</kbd><kbd>r</kbd> | Narrow region line
<kbd>U</kbd> | Convert selected text to uppercase
<kbd>u</kbd> | Convert selected text to lowercase
<kbd>~</kbd> | Invert case of selected text
<kbd>q</kbd><kbd>X</kbd> | Start recording a macro (X = key to assign macro to)
<kbd>q</kbd> | Stop recording a macro
<kbd>@</kbd><kbd>X</kbd> | Playback a macro (X = key to assign macro to)
<kbd>@</kbd><kbd>@</kbd> | Replay previously played macro
<kbd>Ctrl</kbd> + <kbd>x</kbd><kbd>f</kbd> | Completion filenames from current directory
<kbd>Ctrl</kbd> + <kbd>n</kbd> | Completion insert next matching word
<kbd>Ctrl</kbd> + <kbd>p</kbd> | Completion insert previous matching word
</details>

<details>
<summary>Zsh</summary>

alias | Descriptions
--- | ---
`la` | `ls -A`
`l` | `ls -CF`
`vim` | `nvim`
`ssh@venture` | Connect to venture server
</details>

<details>
<summary>tmux</summary>

Commands | Descriptions
--- | ---
<kbd>Ctrl</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd>| Navigate via split panels
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>v</kbd> | Split vertical
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>b</kbd> | Split horizontal
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>c</kbd> | Create a new window
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>k</kbd> | Kill current window
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>w</kbd> | Choose window from a list
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>,</kbd> | Rename the current window
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>Ctrl</kbd><kbd>s</kbd> | Save session
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>Ctrl</kbd><kbd>r</kbd> | Restore session
<kbd>Ctrl</kbd><kbd>a</kbd> + <kbd>I</kbd> | Install tmux plugins
</details>

<details>
<summary>i3wm</summary>

Commands | Descriptions
--- | ---
<kbd>mod</kbd> + <kbd>enter</kbd> | Enter terminal
<kbd>mod</kbd> + <kbd>q</kbd> | Kill focused window
<kbd>mod</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd> | Change focus
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd> | Move focused window
<kbd>mod</kbd> + <kbd>v</kbd> | Split vertical
<kbd>mod</kbd> + <kbd>b</kbd> | Split horizontal
<kbd>mod</kbd> + <kbd>f</kbd> | Fullscreen toggle
<kbd>mod</kbd> + <kbd>x</kbd> | Scratchpad toggle
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>x</kbd> | Move to scratchpad
<kbd>mod</kbd> + <kbd>s</kbd> | Stack layout
<kbd>mod</kbd> + <kbd>w</kbd> | Tab layout
<kbd>mod</kbd> + <kbd>e</kbd> | Split layout
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>space</kbd> | Floating toggle
<kbd>mod</kbd> + <kbd>a</kbd> | Focus parent
<kbd>mod</kbd> + <kbd>num</kbd> | Switch to workspace num
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>num</kbd> | Move focused container to workspace num
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>c</kbd> | Reload configuration
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>r</kbd> | Restart i3
<kbd>mod</kbd> + <kbd>d</kbd> | Rofi menu tab
<kbd>mod</kbd> + <kbd>Tab</kbd> | Rofi window tab
<kbd>mod</kbd> + <kbd>p</kbd> | Rofi password store
<kbd>mod</kbd> + <kbd>n</kbd> | Rofi network manager
<kbd>mod</kbd> + <kbd>c</kbd> | Clipmenu
<kbd>mod</kbd> + <kbd>r</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd> | Resize window
<kbd>mod</kbd> + <kbd>Delete</kbd> + <kbd>l</kbd><kbd>o</kbd><kbd>s</kbd><kbd>r</kbd><kbd>p</kbd>| Logout system
<kbd>mod</kbd> + <kbd>Print</kbd> + <kbd>f</kbd><kbd>s</kbd><kbd>r</kbd> | Print or record screen
</details>
