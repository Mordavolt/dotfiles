#!/bin/bash
PREFIX="${GREEN}[STOW]${CLEAR}"

declare -a folders
folders=(git i3 gtk compton polybar screenshot termite)

for folder in "${folders[@]}"
do
    echo -e "${PREFIX} Stowing ${folder}"
    stow -v --no-folding ${folder}
done
