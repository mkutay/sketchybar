#!/usr/bin/env sh

export SPACE_CLICK_SCRIPT="yabai -m space --focus \$SID 2>/dev/null"

sketchybar \
  --add space space.1 center \
  --set space.1 \
    icon.color="$space_color" \
    icon.highlight_color="$space_color" \
    label.drawing=off \
    drawing=on \
    updates=on \
    associated_display=1 \
    label.font="$FONT:Block:10.0" \
    icon.font="Hack Nerd Font:Bold:9.0" \
    click_script="$SPACE_CLICK_SCRIPT" \
    ignore_association=on \
    background.padding_left=1 \
  --set space.1 \
    associated_space=1 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.2 space.1 \
  --set space.2 \
    associated_space=2 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.3 space.1 \
  --set space.3 \
    associated_space=3 \
    icon=⬤ \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.4 space.1 \
  --set space.4 \
    associated_space=4 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.5 space.1 \
  --set space.5 \
    associated_space=5 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.6 space.1 \
  --set space.6 \
    associated_space=6 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.7 space.1 \
  --set space.7 \
    associated_space=7 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.8 space.1 \
  --set space.8 \
    associated_space=8 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
  --clone space.9 space.1 \
  --set space.9 \
    associated_space=9 \
    icon=⬤ \
    script="$PLUGIN_DIR/space.sh" \
    icon.padding_right=6 \
  --add bracket spaces_bracket '/space.\.*/' \
  --set space.1 \
    icon.padding_left=6 \
  --set spaces_bracket \
    background.color="$background_color" \
    background.corner_radius=20 \
    background.height=25 \