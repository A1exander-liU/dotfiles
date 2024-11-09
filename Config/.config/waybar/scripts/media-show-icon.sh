STATUS=$(playerctl status 2>/dev/null)
ICON=$1
TOOLTIP=$2

if [[ "$STATUS" != "Playing" && "$STATUS" != "Paused" ]]; then
  printf '{}'
else
  jq -n --unbuffered --compact-output \
    --arg text "<span size='x-large'>$ICON</span>" \
    --arg tooltip "$TOOLTIP" \
    '{text: $text, tooltip: $tooltip}'
fi
