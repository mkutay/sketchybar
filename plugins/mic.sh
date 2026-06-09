#!/bin/bash

# note: this only updates the default input device,
# if you have multiple input devices, this might not work as expected
# i.e., if your default is your headphone microphone, but you also
# have a built-in microphone, this will only toggle the headphone microphone;
# especially if an app is using the built-in microphone, it might not work at all

DEFAULT_VOLUME=100
MIC_VOLUME=$(osascript -e 'input volume of (get volume settings)')

case "$SENDER" in
"mouse.clicked")
    # Toggle mic volume
    if [[ $MIC_VOLUME -eq 0 ]]; then
        osascript -e "set volume input volume $DEFAULT_VOLUME"
        sketchybar -m --set mic icon= icon.padding_right=8 icon.padding_left=9
    elif [[ $MIC_VOLUME -gt 0 ]]; then
        osascript -e 'set volume input volume 0'
        sketchybar -m --set mic icon= icon.padding_right=5 icon.padding_left=6
    fi
    ;;
*)
    if [[ $MIC_VOLUME -eq 0 ]]; then
        sketchybar -m --set mic icon= icon.padding_right=5 icon.padding_left=6
    elif [[ $MIC_VOLUME -gt 0 ]]; then
        sketchybar -m --set mic icon= icon.padding_right=8 icon.padding_left=9
    fi
    ;;
esac
