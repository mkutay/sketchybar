#!/usr/bin/env zsh

# Max number of characters so it fits nicely to the right of the notch
# Note: may not work with non-english characters
MAX_LENGTH=50

# Logic starts here, do not modify
HALF_LENGTH=$(((MAX_LENGTH + 1) / 2))

update_track() {
    local running=false
    local player_state="stopped"

    if pgrep -x "Music" >/dev/null 2>&1; then
        running=true
        player_state=$(osascript -e 'tell application "Music" to player state' 2>/dev/null || echo "stopped")
    fi

    if [ "$running" = true ] && [ "$player_state" = "playing" ]; then
        local track
        local artist
        local album

        track=$(osascript -e 'tell application "Music" to name of current track as string' 2>/dev/null || echo "unknown track")
        artist=$(osascript -e 'tell application "Music" to artist of current track as string' 2>/dev/null || echo "unknown artist")
        album=$(osascript -e 'tell application "Music" to get album of current track as string' 2>/dev/null || echo "unknown album")

        # Calculations so it fits nicely
        local track_length=${#track}
        local artist_length=${#artist}

        if [ $((track_length + artist_length)) -gt $MAX_LENGTH ]; then
            # If the total length exceeds the max
            if [ $track_length -gt $HALF_LENGTH ] && [ $artist_length -gt $HALF_LENGTH ]; then
                # If both the track and artist are too long, cut both at half length - 1

                # If MAX_LENGTH is odd, HALF_LENGTH is calculated with an extra space, so give it an extra char
                track="${track:0:$((MAX_LENGTH % 2 == 0 ? HALF_LENGTH - 2 : HALF_LENGTH - 1))}…"
                artist="${artist:0:$((HALF_LENGTH - 2))}…"

            elif [ $track_length -gt $HALF_LENGTH ]; then
                # Else if only the track is too long, cut it by the difference of the max length and artist length
                track="${track:0:$((MAX_LENGTH - artist_length - 1))}…"
            elif [ $artist_length -gt $HALF_LENGTH ]; then
                artist="${artist:0:$((MAX_LENGTH - track_length - 1))}…"
            fi
        fi

        sketchybar --set "$NAME" \
            label="${track} / ${artist}" \
            icon.color=0xffcba6f7 \
            icon.padding_right=3 \
            label.padding_left=3
    elif [ "$running" = false ]; then
        sketchybar --set "$NAME" \
            icon.color=0xfff5e0dc \
            label="" \
            icon.padding_right=0 \
            label.padding_left=0
    else
        # playing is stopped, but the current label might not be empty, check and update padding if necessary
        sketchybar --set "$NAME" \
            icon.color=0xfff5e0dc \
            icon.padding_right=3 \
            label.padding_left=3

        local current_label
        current_label=$(sketchybar --query "$NAME" | jq -r '.label.value')

        if [ "$current_label" = "" ]; then
            sketchybar --set "$NAME" \
                label="" \
                icon.padding_right=0 \
                label.padding_left=0
        fi
    fi
}

case "$SENDER" in
    "mouse.clicked")
        osascript -e 'tell application "Music" to playpause'
        ;;
    *)
        update_track
        ;;
esac
