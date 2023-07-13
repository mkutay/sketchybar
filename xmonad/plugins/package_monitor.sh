#!/usr/bin/env zsh
source "$HOME/.config/sketchybar/xmonad/icons.sh"
source "$HOME/.config/sketchybar/xmonad/colors.sh"

PREV=$(sketchybar --query updates | jq -r .text.label)
sketchybar --set $NAME label=$LOADING

# runs the outdated command and stores the output as a list variable.
brewLIST=$(brew outdated)

# checks to see if the returned list is empty. If so, it sets the outdated packages list to zero, if not, sets it to the line count of the list.
BREW=$($brewLIST | wc -l)

# # runs the outdated command and stores the output as a list variable.
# masLIST=$(mas outdated)
#
# # checks to see if the returned list is empty. If so, it sets the outdated packages list to zero, if not, sets it to the line count of the list.
# if [[ $masLIST == "" ]]; then
  MAS='0'
#   masLIST=""
# else
#   MAS=$(echo "$masLIST" | wc -l)
# fi

DEFAULT="0"

# sum of all outdated packages
SUM=$(( ${BREW:-DEFAULT} + ${MAS:-DEFAULT} ))

COLOR=$widget3
if [[ $SUM -gt 0 ]]; then
  FINAL="$SUM"

  case "$SUM" in
    [0-9]) COLOR=$widget3
    ;;
    1[0-9]) COLOR=$widget3
    ;;
    2[0-9]) COLOR=$widget3
    ;;
    *) COLOR=$widget3
    ;;
  esac
else
  FINAL=0
fi

sketchybar --set $NAME label="$FINAL updates" label.color=$widget3

if [ "$FINAL" != "$PREV" ]; then
  sketchybar --animate tanh 15 --set $NAME label.y_offset=5 label.y_offset=1
fi
