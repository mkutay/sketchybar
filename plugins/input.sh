#!/usr/bin/env bash

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID 2>/dev/null)

case "$SENDER" in
"mouse.clicked")
    case ${SOURCE} in
    'com.apple.keylayout.ABC')
        LABEL='TR'
        osascript -e 'tell application "System Events" to key code 9 using {shift down, control down, option down, command down}'
        ;;
    'com.apple.keylayout.Turkish-QWERTY-PC')
        LABEL='EN'
        osascript -e 'tell application "System Events" to key code 9 using {shift down, control down, option down, command down}'
        ;;
    *)
        LABEL=''
        ;;
    esac
    ;;
*)
    case ${SOURCE} in
    'com.apple.keylayout.ABC') LABEL='EN' ;;
    'com.apple.keylayout.Turkish-QWERTY-PC') LABEL='TR' ;;
    *) LABEL='' ;;
    esac
    ;;
esac

sketchybar --set "$NAME" label="$LABEL"
