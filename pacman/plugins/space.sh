#!/usr/bin/env sh

source $HOME/.config/sketchybar/pacman/colors.sh

if [ "$SELECTED" = "true" ]; then
  sketchybar -m --set $NAME \
    icon=󰮯 \
    icon.font="Hack Nerd Font:Regular:13.0" \
    icon.color="$active_space_color"
else
  sketchybar -m --set $NAME \
    icon.font="Hack Nerd Font:Bold:9.0"\
    icon=⬤ \
    icon.color="$space_color"
fi