#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(systemctl is-active docker.service)" = "active" ]; then
          sudo systemctl stop docker.service
        else
          sudo systemctl start docker.service
        fi
        ;;
      *)
        if [ "$(systemctl is-active docker.service)" = "active" ]; then
          echo ""
        else
          echo ""
        fi
        ;;
esac

