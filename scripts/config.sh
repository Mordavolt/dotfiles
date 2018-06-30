#!/bin/bash
PREFIX="${BLUE}[CONFIG]${CLEAR}"

echo -e "${PREFIX} Adding screenshot tool"
sudo ln --force -s $HOME/.config/screenshot/scregcp /usr/bin/scregcp