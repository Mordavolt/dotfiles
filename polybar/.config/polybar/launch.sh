#!/usr/bin/env sh

IN_MY="eDP1"
IN_PIC="eDP-1-1"
EXT_RIGA="DP1-2"
EXT_PIC="DP-1-1"
EXT_PIC1="DP-1-3"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done


# Launch bar1 and bar2
if (xrandr | grep -E "^$EXT_RIGA"); then
	polybar topbar &
	polybar leftbar &
	polybar rightbar &
elif (xrandr | grep -E "^$EXT_PIC connected"); then
	MONITORT=$EXT_PIC1 polybar topbar &
	MONITORL=$IN_PIC polybar leftbar &
	MONITORR=$EXT_PIC polybar rightbar &
else
	MONITORT=$IN_MY polybar topbar &
	MONITORT=$IN_PIC polybar topbar &
fi

echo "Bars launched..."
