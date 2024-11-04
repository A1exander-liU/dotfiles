#!/usr/bin/env sh

sleep 0.1
STATUS=$(playerctl status 2>/dev/null)

case "$STATUS" in
Playing)
  printf '{"text": "<span size='\''x-large'\''></span>", "tooltip": "Pause"}'
  ;;
Paused)
  printf '{"text": "<span size='\''x-large'\''></span>", "tooltip": "Play"}'
  ;;
*)
  # Fallback case if status is neither Playing nor Paused
  printf '{"text": "<span size='\''x-large'\''>▶</span>", "tooltip": "Play"}' # Default play icon
  ;;
esac
