#!/usr/bin/env sh

grim - | tee "$HOME/Pictures/Screenshots/Screenshot-$(date +%F_%T).png" | wl-copy
