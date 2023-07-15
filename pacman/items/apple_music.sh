sketchybar \
  --add item line1 right \
  --set line1 \
    icon="]" \
    icon.color="$line_color" \
    icon.font="Hack Nerd Font:Regular:12.0" \
    icon.y_offset=-1 \
  --add event song_update com.apple.Music.playerInfo \
  --add item appleMusic right \
  --subscribe appleMusic song_update \
  --set appleMusic \
    script="$PLUGIN_DIR/appleMusic.sh" \
    label.color="$text_color" \
    label.font="$FONT:Block:12.0" \
    icon.font="Hack Nerd Font:Regular:12.0" \
    icon="󰝚" \
    icon.color="$line_color" \
    icon.y_offset=-1 \
  --add item line2 right \
  --set line2 \
    icon="[" \
    icon.color="$line_color" \
    icon.font="Hack Nerd Font:Regular:12.8" \
    icon.y_offset=-1 \