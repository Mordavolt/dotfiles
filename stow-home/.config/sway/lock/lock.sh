#!/usr/bin/env bash

icon="$HOME/wallpapers/lock.png"
tmpbg1='/tmp/screen1.png'
tmpbg2='/tmp/screen2.png'
tmpbg3='/tmp/screen3.png'

(( $# )) && { icon=$1; }

rm -rf "$tmpbg1"
rm -rf "$tmpbg2"
rm -rf "$tmpbg3"

grim -o DP-1 "$tmpbg1"
grim -o DP-2 "$tmpbg2"
grim -o DP-3 "$tmpbg3"

convert "$tmpbg1" -scale 10% -scale 1000% "$tmpbg1"
convert "$tmpbg2" -scale 10% -scale 1000% "$tmpbg2"
convert "$tmpbg3" -scale 10% -scale 1000% "$tmpbg3"

convert "$tmpbg1" "$icon" -gravity center -composite -matte "$tmpbg1"
convert "$tmpbg2" "$icon" -gravity center -composite -matte "$tmpbg2"
convert "$tmpbg3" "$icon" -gravity center -composite -matte "$tmpbg3"

dunstctl set-paused true

swaylock -F -i "DP-1:$tmpbg1" -i "DP-2:$tmpbg2" -i "DP-3:$tmpbg3"

dunstctl set-paused false
