sketchybar \
  --add item music_control_back left \
  --set music_control_back \
    icon="" \
    icon.font="Material Icons:Regular:18.0" \
    icon.color="$music_control_back_color" \
    icon.y_offset=-1 \
    click_script="$PLUGIN_DIR/prev.sh" \
  --subscribe music_control_back mouse.clicked \

sketchybar \
  --add item music_control_pause left \
  --set music_control_pause \
    icon="" \
    icon.font="Material Icons:Regular:18.0" \
    icon.color="$music_control_playpause_color" \
    icon.y_offset=-1 \
    click_script="$PLUGIN_DIR/stopPlay.sh" \
  --subscribe music_control_pause mouse.clicked \

sketchybar \
  --add item music_control_forward left \
  --set music_control_forward \
    icon="" \
    icon.font="Material Icons:Regular:18.0" \
    icon.color="$music_control_forward_color" \
    click_script="$PLUGIN_DIR/next.sh" \
    icon.y_offset=-1 \
  --subscribe music_control_forward mouse.clicked \

sketchybar \
  --add bracket music_control_bracket music_control_back music_control_pause music_control_forward \
  --set music_control_bracket \
    background.color="$background_color" \
    background.corner_radius=20 \
    background.height=25 \