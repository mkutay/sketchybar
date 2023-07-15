### mem Widget ###
sketchybar \
  --add item mem left \
  --set mem \
    update_freq=15 \
    icon.font="Font Awesome 6 Free:Solid:12" \
    icon.color="$mem_color" \
    label.font="$FONT:Block:12.0" \
    label.color="$text_color" \
    script="$PLUGIN_DIR/mem.sh" \
    icon.y_offset=-1 \
    icon.padding_left=10 \
    label.padding_right=10 \
    background.color="$background_color" \
    background.corner_radius=20 \
    background.height=25 \
    background.padding_right=6 \

### cpu Widget ###
sketchybar \
  --add item cpu left \
  --set cpu \
    update_freq=15 \
    icon.font="Font Awesome 6 Free:Solid:12" \
    icon.color="$cpu_color" \
    label.font="$FONT:Block:12.0" \
    label.color="$text_color" \
    script="$PLUGIN_DIR/cpu.sh" \
    icon.y_offset=-1 \
    icon.padding_left=10 \
    label.padding_right=10 \
    background.color="$background_color" \
    background.corner_radius=20 \
    background.height=25 \
    background.padding_right=6 \
    background.padding_left=6 \

### ssd Widget ###
sketchybar \
  --add item disk left \
  --set disk \
    update_freq=120 \
    icon.font="Font Awesome 6 Free:Solid:12" \
    icon.color="$ssd_color" \
    label.font="$FONT:Block:12.0" \
    label.color="$text_color" \
    script="$PLUGIN_DIR/disk.sh" \
    icon.y_offset=-1 \
    icon.padding_left=10 \
    label.padding_right=10 \
    background.color="$background_color" \
    background.corner_radius=20 \
    background.height=25 \
    background.padding_right=6 \
    background.padding_left=6 \

### temp Widget ###
sketchybar \
  --add item temp left \
  --set temp \
    update_freq=5 \
    icon.font="Font Awesome 6 Free:Solid:12" \
    icon.color="$temp_color" \
    label.font="$FONT:Block:12.0" \
    label.color="$text_color" \
    script="$PLUGIN_DIR/temp.sh" \
    icon.y_offset=-1 \
    icon.padding_left=10 \
    label.padding_right=10 \
    background.color="$background_color" \
    background.corner_radius=20 \
    background.height=25 \
    background.padding_right=12 \
    background.padding_left=6 \