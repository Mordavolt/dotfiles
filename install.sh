#!/bin/bash
source scripts/colors.sh
MAIN_PREFIX="${RED}[INSTALL]${CLEAR}"

echo -e "${MAIN_PREFIX} Starting installation"

echo -e "${MAIN_PREFIX} Installing packages"
source scripts/packages.sh

echo -e "${MAIN_PREFIX} Symlinking dotfiles"
source scripts/symlinks.sh

echo -e "${MAIN_PREFIX} Launching additional commands"
source scripts/config.sh