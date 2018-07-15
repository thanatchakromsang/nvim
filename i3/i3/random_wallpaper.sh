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

# Random pictures in folder
find "$PICTURES" -type f | shuf -n 1 | xargs feh --bg-fill &> /dev/null

# feh --bg-fill "$PICTURE/colorful.jpg"

