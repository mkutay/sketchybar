#!/usr/bin/env bash

TEMPERATURE=$(python3 /Users/kutay/.config/sketchybar/aline/plugins/temp.py)

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
    label="temp: $TEMPERATURE.$MOD" \
    icon.drawing=off \
    icon=""

# artik pip'im var