#!/bin/bash
PREFIX="${GREEN}[STOW]${CLEAR}"

declare -a folders
folders=(compton git gtk i3 polybar rofi screenshot termite zsh)

for folder in "${folders[@]}"
do
    echo -e "${PREFIX} Stowing ${folder}"
    stow -v --no-folding ${folder}
done
