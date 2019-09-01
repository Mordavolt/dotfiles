#!/bin/bash

#change these to appropriate laptop naming
INTERNAL="eDP-1-1"
LEFT_V="DP-1-1"
MIDDLE_V="DP-1-2"
RIGHT_H="DP-1-3"
if (xrandr | grep "^$LEFT_V connected" >/dev/null 2>&1); then
  HAS_EXTERNAL=true
else
  HAS_EXTERNAL=false
fi
