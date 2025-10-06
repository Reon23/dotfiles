#!/bin/bash
choice=$(echo -en "layout\nstyles\n" | rofi -dmenu -p "wlogout")

case "$choice" in
"layout")
    kitty -e nvim ~/.config/wlogout/layout
    ;;
"styles")
    kitty -e nvim ~/.config/wlogout/style.css
    ;;
*)
    exit 0
    ;;
esac
