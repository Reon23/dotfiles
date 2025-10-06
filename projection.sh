#!/bin/bash

# Detect internal and external displays automatically
INTERNAL=$(hyprctl monitors | grep "eDP" | awk '{print $2}' | head -n1)
EXTERNAL=$(hyprctl monitors | grep -E "HDMI|^DP" | grep -v "eDP" | awk '{print $2}' | head -n1)

if [ -z "$EXTERNAL" ]; then
    notify-send "No external monitor detected"
    exit 1
fi

# Show Rofi menu
choice=$(echo -e "Duplicate\nExtend\nInternal only\nExternal only" | rofi -dmenu -p "Projection Mode")

case "$choice" in
"Duplicate")
    hyprctl keyword monitor "$INTERNAL,preferred,auto,1"
    hyprctl keyword monitor "$EXTERNAL,preferred,auto,1,mirror,$INTERNAL"
    notify-send "Projection Mode: Duplicate"
    ;;
"Extend")
    hyprctl keyword monitor "$INTERNAL,preferred,auto,1"
    hyprctl keyword monitor "$EXTERNAL,preferred,auto-right,1"
    notify-send "Projection Mode: Extend"
    ;;
"Internal only")
    hyprctl keyword monitor "$INTERNAL,preferred,auto,1"
    hyprctl keyword monitor "$EXTERNAL,disable"
    notify-send "Projection Mode: Internal only"
    ;;
"External only")
    hyprctl keyword monitor "$EXTERNAL,preferred,auto,1"
    hyprctl keyword monitor "$INTERNAL,disable"
    notify-send "Projection Mode: External only"
    ;;
*)
    exit 0
    ;;
esac
