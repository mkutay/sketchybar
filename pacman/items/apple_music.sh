  # --add item line1 left \
  # --set line1 \
  #   icon="[" \
  #   icon.color="$line_color" \
  #   icon.font="Hack Nerd Font:Regular:12.0" \
  #   icon.y_offset=-1 \
sketchybar \
  --add event song_update com.apple.Music.playerInfo \
  --add item appleMusic left \
  --subscribe appleMusic song_update \
  --set appleMusic \
    script="$PLUGIN_DIR/appleMusic.sh" \
    label.color="$text_color" \
    label.font="$FONT:Block:13.0" \
    # icon.font="Hack Nerd Font:Regular:14.0" \
    # icon="󰝚" \
    # icon.color="$active_space_color" \
    # icon.y_offset=-1 \
  # --add item line2 left
  # --set line2 \
  #   icon="]" \
  #   icon.color="$line_color" \
  #   icon.font="Hack Nerd Font:Regular:12.8" \
  #   icon.y_offset=-1 \
