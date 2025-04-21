#!/bin/bash

source "$HOME/.config/i3/screen_vars.sh"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

if [ "$SCREEN_SETUP" = "WORK" ]; then
  MONITORL="DP-1-2" polybar leftbar &
  MONITORR="DP-1-3" polybar rightbar &
  MONITORT="DP-1-4" polybar topbar &
elif [ "$SCREEN_SETUP" = "HOME" ]; then
  MONITORL="DP-1-1-2" polybar leftbar &
  MONITORR="DP-1-2-1"  polybar rightbar &
  MONITORT="DP-1-2-2" polybar topbar &
else
  MONITORT=$INTERNAL polybar topbar &
fi

echo "Bars launched..."
