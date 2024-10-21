#!/bin/sh

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting
date_output=$(date +'%-I:%M %p')

# Separate hours, minutes, and period
hour=${date_output%%:*}
minute_period=${date_output#*:}
minute=${minute_period% *}
period=${minute_period#* }

# For the hour part, only prefix space for the second "1" in "11"
if [ "$hour" == "11" ]; then
    formatted_hour="1 1"
else
    formatted_hour="$hour"
fi

# For the minute part, prefix space for any "1"
formatted_minute="${minute//1/ 1}"

# Reassemble the formatted time
formatted_output="$formatted_hour:$formatted_minute $period"

sketchybar --set "$NAME" label="$formatted_output"
