sketchybar \
  --add item battery right \
  --set battery \
    update_freq=60 \
    icon.font="Font Awesome 6 Free:Solid:18.0" \
    icon.padding_right=4 \
    icon.color="$widget1" \
    icon.y_offset=-5 \
    label.font="$FONT:Medium:14.0" \
    label.color="$label_color" \
    label.y_offset=-5 \
    script="$PLUGIN_DIR/battery.sh" \