#!/bin/bash
PREFIX="${PURPLE}[PACKAGES]${CLEAR}"

echo -e "${PREFIX} Starting pacaur update"
pacaur -Syu --needed \
stow \
xclip \
imagemagick \
rambox \
termite \
chromium \
keepass \
redshift \
dunst \
compton \
udisks2 \
feh \
python-pywal \
pulseaudio