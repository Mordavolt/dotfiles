#!/bin/bash
PREFIX="${GREEN}[STOW]${CLEAR}"

declare -a folders
folders=(alacritty compton dunst git gtk i3 polybar rofi screenshot zsh)

for folder in "${folders[@]}"
do
    echo -e "${PREFIX} Stowing ${folder}"
    stow -v --no-folding ${folder}
done
