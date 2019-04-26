#!/bin/bash
PREFIX="${PURPLE}[PACKAGES]${CLEAR}"

echo -e "${PREFIX} Starting yay update"
yay -Syu --needed \
stow \
xclip \
imagemagick \
rambox-bin \
termite \
chromium \
keepass \
redshift \
dunst \
compton \
udisks2 \
feh \
python-pywal \
pulseaudio \
rofi \
ttf-google-fonts-git \
zsh \
oh-my-zsh-git \
polybar \
ttf-font-awesome-4 \
htop \
playerctl \
scrot \
i3lock \
tldr \
thefuck \ 
fzf \
zsh-autosuggestions
