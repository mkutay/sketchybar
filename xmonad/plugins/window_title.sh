WINDOW_TITLE=$(yabai -m query --windows --window | jq -r ".title")
APP_NAME=$(yabai -m query --windows --window | jq -r ".app")

if [[ ${#APP_NAME} -gt 30 ]]; then
  APP_NAME=$(echo "$APP_NAME" | cut -c 1-30)…
fi

if [[ ${#WINDOW_TITLE} -gt 30 ]]; then
  WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-30)…
fi
sketchybar -m --set window_title label="$APP_NAME / $WINDOW_TITLE"