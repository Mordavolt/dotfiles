#!/bin/bash
source scripts/colors.sh
PREFIX="${RED}[INSTALL]${CLEAR}"

echo -e "${PREFIX} Starting installation"

echo -e "${PREFIX} Installing packages"
source scripts/packages.sh

echo -e "${PREFIX} Symlinking dotfiles"
source scripts/symlinks.sh

echo -e "${PREFIX} Launching additional commands"
source scripts/config.sh