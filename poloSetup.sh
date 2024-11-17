#!/bin/bash

#Basic app instalation

mv -r Backgrounds/ ~/Documents/Backgrounds

sudo pacman -Syu

sudo pacman -S kitty
sudo pacman -S stow

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S google-chrome 
sudo pacman -S firefox


yay -S python3-aur 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cd 

yay -Syu 
yay -Sy curl unzip xz-utils zip libglu1-mesa libc6:amd64 libstdc++6:amd64 lib32z1 libbz2-1.0:amd64

cd Downloads/

curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.5-stable.tar.xz

cd 

mkdir development

tar -xf ~/Downloads/flutter_linux_3.24.5-stable.tar.xz -C ~/development/

flutter doctor --android-licenses

yay -S nvim
yay -S android-studio 

yay -S waybay wofi hyprland hyprlock spotify hypridle hyprpaper

cd ~/poloLunix-dotfiles 

stow .

mv hyprland.conf ~/.config/hypr/hyprland.conf

sudo shutdown -r now



