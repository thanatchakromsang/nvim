#!/bin/sh

INTERN="eDP1"

case "$1" in
    hdmi)
        EXTERN="HDMI1"
        EXTERN2="HDMI2"
        ;;
    *)
esac

case "$2" in
    intern)
        xrandr --output $EXTERN --off --output $EXTERN2 --off --output $INTERN --auto
        i3-msg restart
        sh ~/.dotfiles/i3/i3/random_wallpaper single
        xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1
        ;;
    extern)
        xrandr --output $EXTERN --auto --output $EXTERN2 --off --output $INTERN --off
        i3-msg restart
        sh ~/.dotfiles/i3/i3/random_wallpaper.sh single
        xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
        ;;
    clone)
        CLONERES=`xrandr --query | awk '/^ *[0-9]*x[0-9]*/{ print $1 }' | sort -n | uniq -d | tail -1`
        xrandr --output $INTERN --mode $CLONERES --pos 0x0 --output $EXTERN --mode $CLONERES --pos 0x0 --output $EXTERN2 --off
        i3-msg restart
        sh ~/.dotfiles/i3/i3/random_wallpaper.sh single
        ;;
    extend)
        xrandr --output $INTERN --auto --output $EXTERN --auto --above $INTERN --output $EXTERN2 --off
        i3-msg restart
        sh $DOTFILES/i3/i3/random_wallpaper.sh dual
        xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1
        ;;
    *)
        usage
        ;;
esac

exit 0
