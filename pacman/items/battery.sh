sketchybar \
  --add item battery right \
  --set battery \
    update_freq=30 \
    icon.font="Font Awesome 6 Free:Solid:12.0" \
    icon.color="$battery_color" \
    icon.y_offset=-1 \
    label.font="$FONT:Block:12.0" \
    label.color="$text_color" \
    script="$PLUGIN_DIR/battery.sh" \
    icon.padding_left=10 \
    label.padding_right=10 \
    background.color="$background_color" \
    background.corner_radius=20 \
    background.height=25 \
    background.padding_right=6 \
    background.padding_left=6 \