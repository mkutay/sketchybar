sketchybar \
  --add event song_update com.apple.Music.playerInfo \
  --add item appleMusic left \
  --subscribe appleMusic song_update \
  --set appleMusic \
    script="~/.config/sketchybar/aline/plugins/appleMusic.sh" \
    label.color="$music_indicator_color" \
    label.font="$FONT:Medium:14.0" \
    label.y_offset=-5 \
    icon.font="Hack Nerd Font:Regular:18.0" \
    icon="󰝚" \
    icon.color="$music_indicator_color" \
    icon.y_offset=-5 \
    background.padding_left=10 \