#! /bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I $HOME ~/.Xresources

TZ='Asia/Bangkok'; export TZ

exec ~/.fehbg &
exec i3
