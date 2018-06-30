#!/bin/bash
PREFIX="${GREEN}[STOW]${CLEAR}"

declare -a folders
folders=(git i3)

for folder in "${folders[@]}"
do
    echo -e "${PREFIX} Stowing ${folder}"
    stow -v --no-folding ${folder}
done
