#!/usr/bin/env bash

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

ICON=""

if [[ $MUTED != "false" ]]; then
  ICON=""
fi

sketchybar -m \
--set $NAME icon=$ICON \
--set $NAME label="$VOLUME"
