#!/bin/bash
choice=$(echo -en "config\nstyles\n" | rofi -dmenu -p "swaync")

case "$choice" in
"config")
    kitty -e nvim ~/.config/swaync/config.json
    ;;
"styles")
    kitty -e nvim ~/.config/swaync/style.css
    ;;
*)
    exit 0
    ;;
esac
