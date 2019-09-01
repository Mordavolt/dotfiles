#!/bin/bash

source "$HOME/.config/i3/screen_vars.sh"

# we only work it 2 modes, only INTERNAL or
#  ________  ________
# |        ||        | ___________
# |        ||        ||           |
# | LEFT_V ||MIDDLE_V||  RIGHT_H  |
# |        ||        ||___________|
# |________||________|
if $HAS_EXTERNAL; then
  xrandr --output "$INTERNAL" --off \
    --output "$LEFT_V" --mode 1920x1080 --pos 2280x420 --rotate normal \
    --output "$MIDDLE_V" --mode 1920x1200 --pos 0x0 --rotate left \
    --output "$RIGHT_H" --mode 1920x1080 --pos 1200x0 --rotate left
else
  xrandr --output "$INTERNAL" --mode 1920x1080 --pos 0x0 --rotate normal \
    --output "$LEFT_V" --off \
    --output "$MIDDLE_V" --off \
    --output "$RIGHT_H" --off
fi
