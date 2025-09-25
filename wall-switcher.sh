#!/bin/bash

# === CONFIG ===
WALLPAPER_DIR="$HOME/Pictures/wallpaper"

# Pick a random wallpaper
RANDOM_WALL=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | shuf -n 1)

# === Set Wallpaper in Hyprpaper ===
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$RANDOM_WALL"
hyprctl hyprpaper wallpaper , "$RANDOM_WALL"

# === Generate Colors with Pywal ===
wal -i "$RANDOM_WALL" --backend wal
# You can use --saturate 0.8 or --backend haishoku/colorthief for different palettes
