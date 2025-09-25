#!/bin/bash

# === CONFIG ===
WALLPAPER="$HOME/Pictures/wallpaper/default.png"

# Wait a bit to ensure Hyprland is ready

# Generate colors with pywal
wal -i "$WALLPAPER" --backend wal
