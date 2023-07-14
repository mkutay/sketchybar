#!/usr/bin/env sh

sketchybar --set $NAME icon="" label="$(df -H | grep -E '^(/dev/disk3s5).' | awk '{ printf ("%s\n", $5) }')"
