#!/bin/bash

# Đặt múi giờ và mã unicode
ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

# Cấu hình mạng
echo "ArchLinux" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 ArchLinux.localdomain ArchLinux" >> /etc/hosts

# Đặt mật khẩu cho user root
echo root:260691 | chpasswd

# Thêm người dùng
useradd -m -g wheel dinhpv
echo dinhpv:260691 | chpasswd
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers.d/ermanno
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/ermanno

# Cài đặt các gói cơ bản
pacman -S --noconfirm grub efibootmgr os-prober ntfs-3g networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools

# Cài đặt Driver card màn hình NVIDIA
pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

# pacman -S --noconfirm xf86-video-amdgpu

# Cài đặt GRUB
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
echo "GRUB_DISABLE_OS_PROBER=false" >> /etc/default/grub 
grub-mkconfig -o /boot/grub/grub.cfg

# Mở các dịch vụ cơ bản internet và bluetooth
systemctl enable NetworkManager
systemctl enable bluetooth

printf "\e[1;32mInstall Completed! Type exit, umount -a and reboot.\e[0m"




