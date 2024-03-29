#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

player_status=$(playerctl -p spotify status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{F#10A800}$icon%{F-} $metadata"       # Orange when playing
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#65737E}$icon%{F-} $metadata"       # Greyed out info when paused
else
    echo ""                
fi
