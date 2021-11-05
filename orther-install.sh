   #!/bin/bash

# Install Nodejs
sudo pacman -S --noconfirm nodejs npm

# Universal ctags
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure
sudo make
sudo make install

# Cài đặt paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd $HOME
rm -rf paru

paru -S --noconfirm nerd-fonts-source-code-pro nerd-fonts-source-code-pro nerd-fonts-source-code-pro
