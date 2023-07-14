### mem Widget ###
sketchybar \
  --add item mem right \
  --set mem \
    update_freq=15 \
    icon.font="Font Awesome 6 Free:Solid:18" \
    icon.padding_right=4 \
    icon.color="$widget2" \
    icon.y_offset=-5 \
    label.y_offset=-5 \
    label.font="$FONT:Medium:14.0" \
    label.color="$label_color" \
    label.padding_right=8 \
    script="$PLUGIN_DIR/mem.sh" \

### cpu Widget ###
sketchybar \
  --add item cpu right \
  --set cpu \
    update_freq=15 \
    icon.font="Font Awesome 6 Free:Solid:18" \
    icon.padding_right=4 \
    icon.color="$widget3" \
    icon.y_offset=-5 \
    label.y_offset=-5 \
    label.font="$FONT:Medium:14.0" \
    label.color="$label_color" \
    label.padding_right=8 \
    script="$PLUGIN_DIR/cpu.sh" \

### ssd Widget ###
sketchybar \
  --add item disk right \
  --set disk \
    update_freq=15 \
    icon.font="Font Awesome 6 Free:Solid:18" \
    icon.padding_right=4 \
    icon.color="$widget4" \
    icon.y_offset=-5 \
    label.y_offset=-5 \
    label.font="$FONT:Medium:14.0" \
    label.color="$label_color" \
    label.padding_right=8 \
    script="$PLUGIN_DIR/disk.sh" \

### temp Widget ###
sketchybar \
  --add item temp right \
  --set temp \
    update_freq=5 \
    icon.font="Font Awesome 6 Free:Solid:18" \
    icon.padding_right=4 \
    icon.color="$widget5" \
    icon.y_offset=-5 \
    label.y_offset=-5 \
    label.font="$FONT:Medium:14.0" \
    label.color="$label_color" \
    label.padding_right=8 \
    script="$PLUGIN_DIR/temp.sh" \