#!/usr/bin/env zsh

case "$MODE" in
focus)
    ICON="󰆾"
    LABEL="FOCUS"
    COLOR=0xff89b4fa
    ;;
swap)
    ICON="󰓡"
    LABEL="SWAP"
    COLOR=0xffa6e3a1
    ;;
warp)
    ICON="󰁔"
    LABEL="WARP"
    COLOR=0xfff38ba8
    ;;
resize)
    ICON="󰩨"
    LABEL="RESIZE"
    COLOR=0xfff9e2af
    ;;
insert)
    ICON="󰡎"
    LABEL="INSERT"
    COLOR=0xff94e2d5
    ;;
open)
    ICON="󰏌"
    LABEL="OPEN"
    COLOR=0xfff5c2e7
    ;;
*)
    sketchybar --set "$NAME" drawing=off
    exit 0
    ;;
esac

sketchybar --set "$NAME" \
    drawing=on \
    icon="$ICON" \
    label="$LABEL" \
    background.color="$COLOR"
