# Thanatcha's Dotfiles

My universal dotfiles for every linux machine
- nvim configs (mainly python, javascript)
- tmux configs
- zsh config + alias
- i3wm configs (polybar, dunst, compton, xresources)
- etc.

## __Installation__

```
    sudo pacman -S git

    git clone https://github.com/thanatchakromsang/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && ./installer.sh
```

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

## Normal mode
Commands | Descriptions
--- | ---
`:cd <path>` | Open path */path*
<kbd>Ctrl</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd> | Navigate via split panels
<kbd>w</kbd> | Go to next word *
<kbd>e</kbd> | Go to end of word *
<kbd>b</kbd> | Go back word
<kbd>Ctrl</kbd><kbd>w</kbd><kbd>w</kbd> | Alternative navigate vim split panels
<kbd>,</kbd><kbd>.</kbd> | Set path working directory
<kbd>Tab</kbd> or <kbd>,</kbd><kbd>x</kbd> | Next buffer navigate (Normal mode)
<kbd>Shift</kbd><kbd>Tab</kbd> or <kbd>,</kbd><kbd>z</kbd> | previous buffer navigate
<kbd>,</kbd><kbd>e</kbd> | Find and open files
<kbd>,</kbd><kbd>c</kbd> | Close active buffer (close file)
<kbd>T</kbd> | Open list of all buffer
<kbd>F2</kbd> | Open current file directory in NERDTree
<kbd>F3</kbd> | Toggle NERDTree
<kbd>F4</kbd> | List all class and method, support for python using ctags
<kbd>,</kbd><kbd>v</kbd> | Split vertical
<kbd>,</kbd><kbd>b</kbd> | Split horizontal
<kbd>,</kbd><kbd>f</kbd> | Search by pattern
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
<kbd>,</kbd><kbd>g</kbd><kbd>o</kbd> | git open current file in github 
<kbd>,</kbd><kbd>g</kbd><kbd>v</kbd> | git view tree (all)
<kbd>,</kbd><kbd>g</kbd><kbd>v</kbd><kbd>f</kbd> | git view tree (file)
<kbd>,</kbd><kbd>s</kbd><kbd>o</kbd> | Open Session
<kbd>,</kbd><kbd>s</kbd><kbd>s</kbd> | Save Session
<kbd>,</kbd><kbd>s</kbd><kbd>d</kbd> | Delete Session
<kbd>,</kbd><kbd>s</kbd><kbd>c</kbd> | Close Session
<kbd>g</kbd><kbd>c</kbd> | Comment or uncomment lines that {motion} moves over
<kbd>g</kbd><kbd>f</kbd> | Open file under cursor (absolute path or relative)
<kbd>Y</kbd><kbd>Y</kbd> | Copy to clipboard
<kbd>,</kbd><kbd>p</kbd> | Paste
<kbd>g</kbd><kbd>g</kbd> | Move to first line in file
<kbd>G</kbd> | Move to last line in file
<kbd>/</kbd> | Easymotion search forward
<kbd>?</kbd> | Easymotion search backward
<kbd>g</kbd><kbd>/</kbd> | Easymotion search stay
<kbd>,</kbd><kbd>n</kbd> | Cycle through ale error

#### Insert mode
Commands | Descriptions
--- | ---
<kbd>Alt</kbd><kbd>w</kbd> | Jump to next closed pair
<kbd>Alt</kbd><kbd>e</kbd> | Fast wrap pair to closed pair
<kbd>tab</kbd> | Expand UltiSnips
<kbd>tab</kbd> | Jump forward after expand UltiSnips
<kbd>Ctrl</kbd><kbd>b</kbd> | Jump backward after expand UltiSnips
<kbd>Ctrl</kbd><kbd>n</kbd> | Completion insert next matching word
<kbd>Ctrl</kbd><kbd>p</kbd> | Completion insert previous matching word
<kbd>Ctrl</kbd><kbd>e</kbd> | Activate Emmet plugin

#### Visual mode
Commands | Descriptions
--- | ---
<kbd>U</kbd> | Convert selected text to uppercase
<kbd>u</kbd> | Convert selected text to lowercase
<kbd>~</kbd> | Invert case of selected text
<kbd>></kbd> | indent to right
<kbd><</kbd> | indent to left
<kbd>,</kbd><kbd>n</kbd><kbd>r</kbd> | Narrow region line

#### Macro
Commands | Descriptions
--- | ---
<kbd>q</kbd><kbd>X</kbd> | Start recording a macro (X = key to assign macro to)
<kbd>q</kbd> | Stop recording a macro
<kbd>@</kbd><kbd>X</kbd> | Playback a macro (X = key to assign macro to)
<kbd>@</kbd><kbd>@</kbd> | Replay previously played macro

</details>

<details>
<summary>Zsh</summary>

alias | Descriptions
--- | ---
`l` | List directory in column with permission
`la` | List hidden directory in column with permission
`l.` | List hidden files and directory in column
`ls` | List directory in row
`l1` | List directorey in column
<kbd>Ctrl</kbd><kbd>z</kbd> | Suspend currently working jobs
`f` | Open suspending background jobs
`j` | List suspending background jobs
`df` | Check filesystem harddisk
`v` | Open nvim
`r` | Open ranger
`u` | Update system
`c` | Clear terminal
`ssh@venture` | Connect to venture server
</details>

<details>
<summary>tmux</summary>

Commands | Descriptions
--- | ---
<kbd>Alt</kbd> + <kbd>Tab</kbd> | Prefix for command
<kbd>Ctrl</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd>| Navigate via split panels
<kbd>Prefix</kbd> + <kbd>v</kbd> | Split vertical
<kbd>Prefix</kbd> + <kbd>b</kbd> | Split horizontal
<kbd>Prefix</kbd> + <kbd>c</kbd> | Create a new window
<kbd>Prefix</kbd> + <kbd>k</kbd> | Kill current window
<kbd>Prefix</kbd> + <kbd>Tab</kbd> | Move to next window
<kbd>Prefix</kbd> + <kbd>Shift</kbd><kbd>Tab</kbd> | Move to previous window
<kbd>Prefix</kbd> + <kbd>w</kbd> | Choose window from a list
<kbd>Prefix</kbd> + <kbd>f</kbd> | Maximize current pane
<kbd>Prefix</kbd> + <kbd>,</kbd> | Rename the current window
<kbd>Prefix</kbd> + <kbd>Ctrl</kbd><kbd>s</kbd> | Save session
<kbd>Prefix</kbd> + <kbd>Ctrl</kbd><kbd>r</kbd> | Restore session
<kbd>Prefix</kbd> + <kbd>I</kbd> | Install tmux plugins
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
<kbd>mod</kbd> + <kbd>Tab</kbd> | Move to next workspace
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>Tab</kbd> | Move to previous workspace
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>x</kbd> | Move to scratchpad
<kbd>mod</kbd> + <kbd>num</kbd> | Switch to workspace num
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>num</kbd> | Move focused container to workspace num
<kbd>mod</kbd> + <kbd>s</kbd> | Stack layout
<kbd>mod</kbd> + <kbd>t</kbd> | Tab layout
<kbd>mod</kbd> + <kbd>e</kbd> | Split layout
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>space</kbd> | Floating toggle
<kbd>mod</kbd> + <kbd>a</kbd> | Focus parent
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>c</kbd> | Reload configuration
<kbd>mod</kbd><kbd>Shift</kbd> + <kbd>r</kbd> | Restart i3
<kbd>mod</kbd> + <kbd>d</kbd> | Rofi menu tab
<kbd>mod</kbd> + <kbd>w</kbd> | Rofi window tab
<kbd>mod</kbd> + <kbd>p</kbd> | Rofi password store
<kbd>mod</kbd> + <kbd>n</kbd> | Rofi network manager
<kbd>mod</kbd> + <kbd>r</kbd> + <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd> | Resize window
<kbd>mod</kbd> + <kbd>Delete</kbd> + <kbd>l</kbd><kbd>o</kbd><kbd>s</kbd><kbd>r</kbd><kbd>p</kbd>| Logout system
<kbd>mod</kbd> + <kbd>Print</kbd> + <kbd>f</kbd><kbd>s</kbd><kbd>r</kbd> | Print or record screen
</details>
