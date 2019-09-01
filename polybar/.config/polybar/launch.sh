#!/usr/bin/env sh

source "$HOME/.config/i3/screen_vars.sh"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

if $HAS_EXTERNAL; then
  MONITORL=$LEFT_V polybar leftbar &
  MONITORR=$MIDDLE_V polybar rightbar &
  MONITORT=$RIGHT_H polybar topbar &
else
  MONITORT=$INTERNAL polybar topbar &
fi

echo "Bars launched..."
