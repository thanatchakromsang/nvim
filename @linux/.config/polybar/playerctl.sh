#!/bin/sh

case "$1" in
    --toggle)
        [[ "$(playerctl status)" = "Playing" || "$(playerctl status)" = "Paused" ]] && echo "0"
        ;;
      *)
        if [[ "$(playerctl status)" = "Playing" ]]; then
          echo -n "$(playerctl metadata xesam:artist) -  $(playerctl metadata xesam:title)"; else echo -n " Play music";
        fi
        ;;
esac



