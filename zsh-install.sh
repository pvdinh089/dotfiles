#!/bin/bash

# Cài đặt zsh
sudo pacman -S --noconfirm zsh

# Cài đặt oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Cài đặt zsh - autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp -r .zshrc ~
