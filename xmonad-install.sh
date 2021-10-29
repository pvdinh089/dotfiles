#!/bin/bash
# Cài đặt các gói của xmonad
sudo pacman -S --noconfirm xorg ligthdm lightdm-gtk-greeter xmonad xmonad-contrib xmobar dmenu picom feh

# Kích hoạt dịch vụ quản lý Desktop
sudo systemctl enable lightdm

git clone đường dẫn đến github

# Set Keyboard
echo "setxkbmap us &" >> $HOME/.xprofile

# Set hinh nen
echo "~/.config/wallpaper/fehbg &" >> $HOME/.xprofile

# Hieu ung
echo "picom -f &" >> $HOME/.xprofile



