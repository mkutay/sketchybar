#!/usr/bin/env bash

source $HOME/.config/sketchybar/pacman/colors.sh

RUNNING=$(osascript -e 'if application "Music" is running then return 0')
if [ "$RUNNING" == "" ]; then
  # sketchybar -m --set $NAME drawing=off
  sketchybar -m --set $NAME drawing=on label=""
  exit 0
else
  sketchybar -m --set $NAME drawing=on
fi

PLAYING=0
if [ "$(osascript -e 'if application "Music" is running then tell application "Music" to get player state')" == "playing" ]; then
  PLAYING=1
fi

TRACK=$(osascript -e 'tell application "Music" to name of current track as string' 2>/dev/null || echo "unknown track")
ARTIST=$(osascript -e 'tell application "Music" to artist of current track as string' 2>/dev/null || echo "unknown artist")
ALBUM=$(osascript -e 'tell application "Music" to get album of current track as string' 2>/dev/null || echo "unknown album")

if [[ ${#TRACK} -gt 67 ]]; then
  TRACK="$(echo "$TRACK" | cut -c 1-67)…"
fi
if [[ ${#ARTIST} -gt 67 ]]; then
  ARTIST="$(echo "$ARTIST" | cut -c 1-67)…"
fi
if [[ ${#ALBUM} -gt 67 ]]; then
  ALBUM="$(echo "$ALBUM" | cut -c 1-67)…"
fi

if [ "$TRACK" == "unknown track" ]; then
  sketchybar -m --set $NAME drawing=on label=""
  exit 0
else 
  sketchybar -m --set $NAME drawing=on
fi

LABEL=""
if [ "$ARTIST" == "unknown artist" ]; then
  LABEL="$TRACK"
else
  LABEL="$TRACK"
fi

if [ $PLAYING -eq 0 ]; then
  sketchybar -m --set $NAME drawing=on label.color="$no_music_color"
  # LABEL="$LABEL (NP)"
else
  sketchybar -m --set $NAME drawing=on label.color="$text_color"
fi

sketchybar -m --set $NAME drawing=on label="$LABEL"
