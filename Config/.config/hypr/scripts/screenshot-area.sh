#!/usr/bin/env sh

grim -g "$(slurp)" - | tee "$HOME/Pictures/Screenshots/Screenshot-$(date +%F_%T).png" | wl-copy
