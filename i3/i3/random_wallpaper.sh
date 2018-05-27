#!/bin/bash
PICTURES="$HOME/Pictures/Wallpaper"

case "$1" in
    single)
        PICTURES="$HOME/Pictures/Wallpaper"
        ;;
    dual)
        PICTURES="$HOME/Pictures/Wallpaper/Dual"
        ;;
    *)
        ;;
esac

find "$PICTURES" -type f | shuf -n 1 | xargs feh --bg-fill &> /dev/null

