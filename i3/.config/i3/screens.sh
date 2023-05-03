#!/bin/bash

source "$HOME/.config/i3/screen_vars.sh"

if [ "$SCREEN_SETUP" = "WORK" ]; then
  source "$HOME/.config/i3/3scr-work.sh"
elif [ "$SCREEN_SETUP" = "HOME" ]; then
  source "$HOME/.config/i3/3scr-new-home.sh"
else
  source "$HOME/.config/i3/1scr-internal.sh"
fi
