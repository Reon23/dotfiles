#!/bin/bash
choice=$(echo -en "config\ntheme\n" | rofi -dmenu -p "rofi")

case "$choice" in
"config")
    kitty -e nvim ~/.config/rofi/config.rasi
    ;;
"theme")
    kitty -e nvim ~/.config/rofi/theme.rasi
    ;;
*)
    exit 0
    ;;
esac
