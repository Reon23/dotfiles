#!/bin/bash
choice=$(echo -en "hyprland\nhyprpaper\nhypridle\nwaybar\nrofi\nfastfetch\nswaync\nswayosd\nwlogout\n" | rofi -dmenu -p "configure")

case "$choice" in
"hyprland")
    bash ~/dotfiles/config/config_hyrpland.sh
    ;;
"hyprpaper")
    kitty -e nvim ~/.config/hypr/hyprpaper.conf
    ;;
"hypridle")
    kitty -e nvim ~/.config/hypr/hypridle.conf
    ;;
"waybar")
    bash ~/dotfiles/config/config_waybar.sh
    ;;
"rofi")
    bash ~/dotfiles/config/config_rofi.sh
    ;;
"fastfetch")
    kitty -e nvim ~/.config/fastfetch/config.jsonc
    ;;
"swaync")
    bash ~/dotfiles/config/config_swaync.sh
    ;;
"swayosd")
    kitty -e nvim ~/.config/swayosd/style.css
    ;;
"wlogout")
    bash ~/dotfiles/config/config_wlogout.sh
    ;;
*)
    exit 0
    ;;
esac
