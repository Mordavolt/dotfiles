#!/bin/bash
echo "Starting installation"

echo "Installing packages"
yay -Syu --needed \
stow \
wl-clipboard \
imagemagick \
rambox-pro-bin \
alacritty \
chromium \
dunst \
udisks2 \
feh \
python-pywal \
pipewire \
pipewire-pulse \
pipewire-alsa \
wofi \
ttf-google-fonts-git \
zsh \
oh-my-zsh-git \
waybar \
ttf-font-awesome-4 \
htop \
playerctl \
grim \
swaylock \
tldr \
thefuck \
fzf \
zsh-autosuggestions \
mousepad \
neofetch \
openssh \
net-tools \
inetutils \
battop \
intellij-idea-ultimate-edition \
intellij-idea-ultimate-edition-jre \
python \
python-requests \
spotify \
pavucontrol \
reflector \
alsa-firmware \
sof-firmware \
alsa-ucm-conf \
jdk-openjdk \
telegram-desktop \
jdk-jetbrains \
mvnd \
thunar \
docker \
jq \
ripgrep \
networkmanager \
nm-connection-editor \
network-manager-applet \
blueman \
swayidle \
noto-fonts-emoji

echo "Symlinking dotfiles"
stow -v --no-folding stow-home
echo "Generating terminal theme from wallpaper"
wal -i $HOME/wallpapers/bg1.png
echo "Copying zsh theme"
sudo cp $HOME/dotfiles/static/custom.zsh-theme /usr/share/oh-my-zsh/themes
echo "Defaulting to zsh shell"
chsh -s /bin/zsh
