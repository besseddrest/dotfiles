#!/bin/bash

SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)

for sid in "${SPACE_SIDS[@]}"
do
  sketchybar --add space space.$sid left                                 \
             --set space.$sid space=$sid                                 \
                              icon=$sid                                  \
                              icon.padding_right=0 \
                              icon.padding_left=0 \
                              label.padding_right=0 \
                              label.padding_left=0 \
                              script="$PLUGIN_DIR/space.sh"
done

# sketchybar --add item space_separator left                             \
#            --set space_separator icon=" " \
#                                  icon.padding_left=0 \
#                                  label.drawing=off                     \
#                                  background.drawing=off                \
#                                  script="$PLUGIN_DIR/space_windows.sh" \
#            --subscribe space_separator space_windows_change

