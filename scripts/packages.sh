#!/bin/bash
PREFIX="${PURPLE}[PACKAGES]${CLEAR}"

echo -e "${PREFIX} Starting pacaur update"
pacaur -Syu --needed stow