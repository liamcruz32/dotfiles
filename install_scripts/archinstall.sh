#!/bin/bash
sudo pacman -Syu xsel xorg-xinput leafpad tumbler webp-pixbuf-loader ffmpegthumbnailer totem evince herbstluftwm picom dunst polybar acpi rofi tmux gvim network-manager-applet nitrogen arandr gdm lxappearance blueman pcmanfm libreoffice-fresh transmission-gtk gthumb gimp firefox papirus-icon-theme arc-gtk-theme pipewire lightdm-gtk-greeter ttf-font-awesome noto-fonts flameshot kitty gnome-keyring --needed

sudo systemctl enable bluetooth
sudo systemctl enable gdm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
