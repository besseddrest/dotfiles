#!/bin/bash

sketchybar --add item front_app center \
           --set front_app       background.color=$BG_ALT\
                                 background.border_width=1 \
                                 background.border_color=$BORDER_MAIN \
                                 icon.color=$TN_BLUE \
                                 icon.font="sketchybar-app-font:Regular:15.0" \
                                 icon.padding_right=5 \
                                 icon.padding_left=15 \
                                 label.font="SF Pro:Semibold:16.0" \
                                 label.color=$TN_GREEN \
                                 label.padding_left=5 \
                                 label.padding_right=15 \
                                 padding_left=10 \
                                 padding_right=10 \
                                 script="$PLUGIN_DIR/front_app.sh" \
           --subscribe front_app front_app_switched
