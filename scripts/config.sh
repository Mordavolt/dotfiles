#!/bin/bash
PREFIX="${BLUE}[CONFIG]${CLEAR}"

echo -e "${PREFIX} Adding screenshot tool"
sudo ln --force -s $HOME/.config/screenshot/scregcp /usr/bin/scregcp
echo -e "${PREFIX} Copying zsh theme"
sudo cp $HOME/dotfiles/static/custom.zsh-theme /usr/share/oh-my-zsh/themes