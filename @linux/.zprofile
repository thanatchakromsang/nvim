eval $(ssh-agent)
export PATH="$HOME/.dotfiles/scripts/bin:$PATH"

if [[ ! $DISPLAY && XDG_VTNR -le 2 ]]; then
  exec startx
fi
