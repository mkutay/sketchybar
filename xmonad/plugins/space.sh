#!/usr/bin/env sh

source ~/.config/sketchybar/xmonad/colors.sh # Load all defined colors

if [ "$SELECTED" = "true" ]; then
  sketchybar -m --set $NAME icon.color="$active_space_color"
  sketchybar -m --set $NAME icon.background.color="$active_space_color"
  sketchybar -m --set $NAME icon.background.y_offset=-9
else
  sketchybar -m --set $NAME icon.color="$space_color"
  sketchybar -m --set $NAME icon.background.y_offset=-20
  sketchybar -m --set $NAME icon.background.color="$space_color"
fi
