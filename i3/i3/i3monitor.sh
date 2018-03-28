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
        sh $HOME/.config/i3/wallpaper single
        i3-msg restart
        xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1
        ;;
    extern)
        xrandr --output $EXTERN --auto --output $EXTERN2 --off --output $INTERN --off
        sh $HOME/.config/i3/wallpaper single
        i3-msg restart
        xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
        ;;
    clone)
        CLONERES=`xrandr --query | awk '/^ *[0-9]*x[0-9]*/{ print $1 }' | sort -n | uniq -d | tail -1`
        xrandr --output $INTERN --mode $CLONERES --pos 0x0 --output $EXTERN --mode $CLONERES --pos 0x0 --output $EXTERN2 --off
        sh $HOME/.config/i3/wallpaper single
        i3-msg restart
        ;;
    extend)
        xrandr --output $INTERN --auto --output $EXTERN --auto --right-of $INTERN --output $EXTERN2 --off
        sh /home/mike/.scripts/bin/wallpaper dual
        i3-msg restart
        ;;
    *)
        usage
        ;;
esac

exit 0
