#!/bin/bash
choice=$(echo -en "config\nstyles\n" | rofi -dmenu -p "waybar")

case "$choice" in
"config")
    kitty -e nvim ~/.config/waybar/config.jsonc
    ;;
"styles")
    kitty -e nvim ~/.config/waybar/style.css
    ;;
*)
    exit 0
    ;;
esac
