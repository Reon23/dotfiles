#!/bin/bash

# === CONFIG ===
WALLPAPER="$HOME/Pictures/wallpaper/default.jpg"

# Wait a bit to ensure Hyprland is ready
sleep 1
# Generate colors with pywal
wal -i "$WALLPAPER" --backend wal
