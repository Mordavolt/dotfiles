#!/bin/bash

# toggles the external monitor on/off in specified direction
IN="eDP1"
EXT="DP1-2"
EXT2="DP-1-1"

if (xrandr | grep "$EXT"); then
    xrandr --output DP2-1 --mode 1920x1080 --pos 2160x448 --rotate normal --output DP2-2 --off --output DP2-3 --off --output eDP1 --off --output DP2 --off --output DP1 --off --output DP1-3 --mode 1920x1080 --pos 1080x0 --rotate left --output DP1-2 --mode 1920x1080 --pos 0x0 --rotate left --output DP1-1 --off
elif (xrandr | grep "$EXT2"); then
    xrandr --output eDP-1-1 --mode 1368x768 --pos 0x1048 --rotate normal --output DP-1-1 --mode 1920x1080 --pos 2448x420 --rotate normal --output DP-1-2 --off --output DP-1-3 --mode 1920x1080 --pos 1368x0 --rotate left
else
    xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output DP1-3 --off --output DP1-2 --off --output DP1-1 --off --output DP2 --off
fi
