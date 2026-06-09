#!/usr/bin/env zsh

# we add different padding settings fro 4, 6, 9 since even with
# a mono font, they have a pixel width that is different from the
# other numbers, so we need to adjust the padding accordingly

update_space() {
    SPACE_ID=$(echo "$INFO" | jq -r '."display-1"')

    case $SPACE_ID in
    1)
        ICON=󰅶
        ICON_PADDING_LEFT=7
        ICON_PADDING_RIGHT=7
        ;;
    4)
        ICON=$SPACE_ID
        ICON_PADDING_LEFT=9
        ICON_PADDING_RIGHT=9
        ;;
    6)
        ICON=$SPACE_ID
        ICON_PADDING_LEFT=9
        ICON_PADDING_RIGHT=9
        ;;
    9)
        ICON=$SPACE_ID
        ICON_PADDING_LEFT=9
        ICON_PADDING_RIGHT=9
        ;;
    *)
        ICON=$SPACE_ID
        ICON_PADDING_LEFT=9
        ICON_PADDING_RIGHT=10
        ;;
    esac

    sketchybar --set $NAME \
        icon=$ICON \
        icon.padding_left=$ICON_PADDING_LEFT \
        icon.padding_right=$ICON_PADDING_RIGHT
}

case "$SENDER" in
"mouse.clicked")
    # Reload sketchybar
    sketchybar --remove '/.*/'
    source $HOME/.config/sketchybar/sketchybarrc
    ;;
*)
    update_space
    ;;
esac
