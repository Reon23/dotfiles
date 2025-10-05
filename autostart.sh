#!/bin/bash

# === CONFIG ===
WALLPAPER="$HOME/Pictures/wallpaper/a_road_with_trees_on_either_side_of_it.jpg"

# Wait a bit to ensure Hyprland is ready
sleep 1
# Generate colors with pywal
wal -i "$WALLPAPER" --backend wal
