#!/bin/bash
choice=$(echo -en "config\nappearance\nautostart\nenvironment\ninput\nkeybinds\nmonitors\nmisc\npermissions\nprograms\nwindow rules\n" | rofi -dmenu -p "hyprland")

case "$choice" in
"config")
    kitty -e nvim ~/.config/hypr/hyprland.conf
    ;;
"styles")
    kitty -e nvim ~/.config/waybar/style.css
    ;;
"appearance")
    choice2=$(echo -en "animations\ndecoration\ngeneral\n" | rofi -dmenu -p "appearance")
    case "$choice2" in
    "animations")
        kitty -e nvim ~/.config/hypr/modules/appearance/animations/animations.conf
        ;;
    "decoration")
        kitty -e nvim ~/.config/hypr/modules/appearance/decoration/decoration.conf
        ;;
    "general")
        kitty -e nvim ~/.config/hypr/modules/appearance/general/general.conf
        ;;
    esac
    ;;
"autostart")
    kitty -e nvim ~/.config/hypr/modules/autostart/autostart.conf
    ;;
"environment")
    kitty -e nvim ~/.config/hypr/modules/environment/environment.conf
    ;;
"input")
    kitty -e nvim ~/.config/hypr/modules/input/input.conf
    ;;
"keybinds")
    kitty -e nvim ~/.config/hypr/modules/keybinds/keybinds.conf
    ;;
"monitors")
    kitty -e nvim ~/.config/hypr/modules/monitors/monitors.conf
    ;;
"misc")
    kitty -e nvim ~/.config/hypr/modules/misc/misc.conf
    ;;
"permissions")
    kitty -e nvim ~/.config/hypr/modules/permissions/permissions.conf
    ;;
"programs")
    kitty -e nvim ~/.config/hypr/modules/programs/programs.conf
    ;;
"window rules")
    kitty -e nvim ~/.config/hypr/modules/window_rules/window_rules.conf
    ;;
*)
    exit 0
    ;;
esac
