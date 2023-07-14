#!/usr/bin/env sh

source $HOME/.config/sketchybar/aline/color.sh

if [ "$SELECTED" = "true" ]; then
  sketchybar -m --set $NAME icon.color="$active_space_color"
else
  sketchybar -m --set $NAME icon.color="$space_color"
fi