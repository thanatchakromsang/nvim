#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(systemctl is-active bluetooth.service)" = "active" ]; then
          sudo systemctl stop bluetooth.service
        else
          sudo systemctl start bluetooth.service
          bluetoothctl << EOF
          power on
EOF
        fi
        ;;
      *)
        if [ "$(systemctl is-active bluetooth.service)" = "active" ]; then
          echo ""
        else
          echo ""
        fi
        ;;
esac




