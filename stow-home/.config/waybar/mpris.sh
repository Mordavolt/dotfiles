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
    echo "{\"text\": \"$icon $metadata\", \"class\": \"playing\"}"
elif [[ $player_status = "Paused" ]]; then
    echo "{\"text\": \"$icon $metadata\", \"class\": \"paused\"}"
else
    echo "{\"text\": \"\"}"
fi
