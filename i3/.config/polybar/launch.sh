#!/usr/bin/env sh

IN="eDP1"
EXT="DP1-2"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
if (xrandr | grep "$EXT"); then
	polybar topbar &
	polybar leftbar &
	polybar rightbar &
else
	MONITORT=$IN polybar topbar &
fi

echo "Bars launched..."
