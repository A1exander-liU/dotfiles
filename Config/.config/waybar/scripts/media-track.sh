#!/usr/bin/env bash

# Fetch track title and artist
TRACK_TITLE=$(playerctl metadata --format "{{ title }}" 2>/dev/null)
TRACK_ARTIST=$(playerctl metadata --format "{{ artist }}" 2>/dev/null)

if [[ -z "$TRACK_TITLE" ]]; then
  printf '{"text": "", "tooltip": ""}'
fi

# Use jq to build the JSON structure directly
jq -n --unbuffered --compact-output \
  --arg text "$TRACK_TITLE" \
  --arg tooltip "$TRACK_TITLE  $TRACK_ARTIST" \
  '{text: $text, tooltip: $tooltip}'
