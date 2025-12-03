#!/bin/bash
# Smooth fade to black (GNOME-style)

# Save current brightness
brightnessctl -s

# Get max brightness
max=$(brightnessctl m)
current=$(brightnessctl g)
steps=30   # Number of steps in fade
delay=0.05 # Delay between steps in seconds

step=$((current / steps))
if [ $step -eq 0 ]; then step=1; fi

# Gradually fade to black
for i in $(seq $steps); do
    new=$((current - i * step))
    if [ $new -lt 0 ]; then new=0; fi
    brightnessctl set $new >/dev/null
    sleep $delay
done

# Hold black for a moment
sleep 1

# Power off display (NVIDIA-safe)
wlr-randr --output eDP-1 --off
