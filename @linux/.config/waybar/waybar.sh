#!/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

HOSTNAME="$(hostname)"

case "$HOSTNAME" in
  *sertis*)
    waybar -c $HOME/.config/waybar/sertis.conf
    ;;
  *nuc*)
    waybar -c $HOME/.config/waybar/nuc.conf
    ;;
  *)
    waybar
    ;;
esac
