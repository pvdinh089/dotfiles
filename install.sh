#!/bin/bash

# Update System
sudo pacman -Syyu --noconfirm

# Cài đặt các gói của xmonad
sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter xmonad xmonad-contrib xmobar dmenu picom feh otf-font-awesome ttf-mononoki ttf-ubuntu-font-family

sleep 5
# Kích hoạt dịch vụ quản lý Desktop
sudo systemctl enable lightdm

sleep 5
cp -r .config $HOME
cp -r .xmonad $HOME

cd dmenu
sudo make clean install
 
xmonad --recompile

./terminator/install.sh
cd $HOME

# Set Keyboard
echo "setxkbmap us &" >> $HOME/.xprofile

# Set Wallpaper
echo "~/.config/wallpaper/fehbg &" >> $HOME/.xprofile

# Hieu ung
echo "picom -f &" >> $HOME/.xprofile