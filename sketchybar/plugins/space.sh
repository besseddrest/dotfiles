#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

source "$CONFIG_DIR/colors.sh" # Loads all defined colors


# key_code=$((NAME + 17))


if [ $SELECTED = true ]; then
  sketchybar --set $NAME background.drawing=on \
                         background.color=$TN_BLACK \
                         background.border_width=1 \
                         background.border_color=$TN_GREEN \
                         background.height=28 \
                         label.color=$TN_GREEN \
                         label.padding_left=0 \
                         label.padding_right=0 \
                         icon.font="SF Pro:Semibold:15.0" \
                         icon.color=$TN_GREEN \
                         icon.padding_left=15 \
                         icon.padding_right=15 \
                         align="center" \
                         padding_left=0 \
                         padding_right=10

else
  sketchybar --set $NAME background.drawing=on \
                         background.color=$WHITE_10 \
                         background.border_width=1 \
                         background.border_color=$WHITE_10 \
                         label.color=$WHITE_25 \
                         label.padding_left=0 \
                         label.padding_right=0 \
                         icon.font="SF Pro:Semibold:15.0" \
                         icon.color=$WHITE_25 \
                         icon.padding_left=15 \
                         icon.padding_right=15 \
                         align="center" \
                         padding_left=0 \
                         padding_right=10
fi
