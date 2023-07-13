#!/usr/bin/env bash

sketchybar \
  --add space space_template left \
  --set space_template icon.color="$space_color" \
    label.drawing=off \
    drawing=off \
    updates=on \
    associated_display=1 \
    label.font="$FONT:Black:10.0" \
    icon.font="$FONT:Bold:11.0" \
    icon.padding_right=2 \
    icon.padding_left=2 \
    icon.y_offset=2 \
    background.padding_left=0 \
    background.padding_right=5 \
    icon.background.height=2 \
    icon.background.y_offset=-13 \
    click_script="$SPACE_CLICK_SCRIPT" \
    ignore_association=on \
  --clone spaces_1.idle space_template \
  --set spaces_1.idle associated_space=1 \
    icon=obs \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.misc space_template \
  --set spaces_1.misc associated_space=2 \
    icon=www \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.doc space_template \
  --set spaces_1.doc associated_space=3 \
    icon=www \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.help space_template \
  --set spaces_1.help associated_space=4 \
    icon=cod \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.music space_template \
  --set spaces_1.music associated_space=5 \
    icon=ter \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.nine space_template \
  --set spaces_1.nine associated_space=6 \
    icon=ter \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.code space_template \
  --set spaces_1.code associated_space=7 \
    icon=fin \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.tex space_template \
  --set spaces_1.tex associated_space=8 \
    icon=fin \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --clone spaces_1.web space_template \
  --set spaces_1.web associated_space=9 \
    icon=mus \
    icon.highlight_color="$space_color" \
    icon.background.color="$space_color" \
    drawing=on \
    script="$PLUGIN_DIR/space.sh" \
  --add bracket spaces_1 \
    spaces_1.idle \
    spaces_1.misc \
    spaces_1.doc \
    spaces_1.help \
    spaces_1.music \
    spaces_1.nine \
    spaces_1.code \
    spaces_1.web \
    spaces_1.tex \
    spaces_1.web \