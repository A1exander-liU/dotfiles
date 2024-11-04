#!/usr/bin/env sh

playerctl play-pause >/dev/null
STATUS=$(playerctl status)

case "$STATUS" in
Playing)
  printf '{"text": "<span size='\''x-large'\''></span>"}'
  ;;
Paused)
  printf '{"text": "<span size='\''x-large'\''></span>"}'
  ;;
esac
