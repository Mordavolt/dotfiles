#!/bin/bash

export INTERNAL="eDP-1-1"

if (xrandr | grep "^DP-1-1 connected" >/dev/null 2>&1); then
  export SCREEN_SETUP="WORK"

  export LEFT_V="DP-1-1"
  export MIDDLE_V="DP-1-2"
  export RIGHT_H="DP-1-3"
elif  (xrandr | grep "^DP-1-1-2 connected" >/dev/null 2>&1); then
  export SCREEN_SETUP="HOME"

  export LEFT_V="DP-1-1-2"
  export MIDDLE_V="DP-1-2-1"
  export RIGHT_H="DP-1-2-2"
else
  export SCREEN_SETUP="INTERNAL"
fi
