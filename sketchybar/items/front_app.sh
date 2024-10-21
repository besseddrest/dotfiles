#!/bin/bash

sketchybar --add item front_app left \
           --set front_app       background.color=$TN_BLACK \
                                 background.border_width=1 \
                                 background.border_color=$TN_GREEN \
                                 icon.color=$TN_BLACK \
                                 icon.background.corner_radius=5 \
                                 icon.background.color=$TN_GREEN \
                                 icon.background.height=28 \
                                 icon.font="sketchybar-app-font:Regular:16.0" \
                                 icon.padding_right=10 \
                                 icon.padding_left=10 \
                                 label.font="SF Pro:Semibold:18.0" \
                                 label.color=$TN_GREEN \
                                 label.padding_left=12 \
                                 label.padding_right=12 \
                                 padding_left=0 \
                                 padding_right=0 \
                                 script="$PLUGIN_DIR/front_app.sh" \
           --subscribe front_app front_app_switched
