#! /bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I $HOME ~/.Xresources

exec ~/.fehbg &
exec i3
