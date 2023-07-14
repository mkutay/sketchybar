#!/usr/bin/env bash

TEMPERATURE=$(python3 /Users/kutay/.config/sketchybar/xmonad/plugins/temp.py)

ICON=""

# if ((2500 <= $TEMPERATURE && $TEMPERATURE <= 3500)); then
#     ICON=""
# elif ((3500 < $TEMPERATURE && $TEMPERATURE <= 4500)); then
#     ICON=""
# elif ((4500 < $TEMPERATURE && $TEMPERATURE <= 5500)); then
#     ICON=""
# elif ((5500 < $TEMPERATURE && $TEMPERATURE <= 6500)); then
#     ICON=""
# else
#     ICON=""
# fi

MOD=$((TEMPERATURE % 100))
TEMPERATURE=$((TEMPERATURE / 100))

sketchybar -m --set $NAME \
    label="$TEMPERATURE.$MOD" \
    icon.drawing=on \
    icon=""

# artik pip'im var