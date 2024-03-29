#!/usr/bin/env bash

icon="$HOME/walpapers/lock.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

rm -rf "$tmpbg"
scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
dunstctl set-paused true
i3lock -f -i "$tmpbg"
dunstctl set-paused false
