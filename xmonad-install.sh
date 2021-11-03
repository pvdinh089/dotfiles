#!/bin/bash
# Cài đặt các gói của xmonad
sudo pacman -S --noconfirm xorg ligthdm lightdm-gtk-greeter xmonad xmonad-contrib xmobar dmenu picom feh otf-font-awesome

# Kích hoạt dịch vụ quản lý Desktop
sudo systemctl enable lightdm

sleep 5
cd dotfiles
cp -r .config $HOME
cp -r .xmonad $HOME
xmonad --recompile

cd $HOME

# Set Keyboard
echo "setxkbmap us &" >> $HOME/.xprofile

# Set Wallpaper
echo "~/.config/wallpaper/fehbg &" >> $HOME/.xprofile

# Hieu ung
echo "picom -f &" >> $HOME/.xprofile



