#!/bin/bash

#Basic app instalation

mv -r Backgrounds/ ~/Documents/Backgrounds
sudo pacman -Syu

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~/git/poloLunix-dotfiles/dotfiles 

yay --noconfirm --answerdiff=None --answeredit=None -Sy stow

stow .

yay --noconfirm --answerdiff=None --answeredit=None -S kitty starship google-chrome firefox curl unzip xz-utils zip libglu1-mesa libc6:amd64 libstdc++6:amd64 lib32z1 libbz2-1.0:amd64 neovim android-studio waybar wofi hyprland hyprlocl spotify hypridle hyprpaper

cd 

yay -S python3-aur 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cd Downloads/

curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.5-stable.tar.xz

cd 

mkdir development

tar -xf ~/Downloads/flutter_linux_3.24.5-stable.tar.xz -C ~/development/

cd

curl -L -R -O https://www.lua.org/ftp/lua-5.4.7.tar.gz
tar zxf lua-5.4.7.tar.gz
cd lua-5.4.7
make all test

cd ~/Downloads

curls -O https://download.oracle.com/java/23/latest/jdk-23_linux-aarch64_bin.tar.gz
tar -xf ~/Downloads/jdk-23_linux-aarch64_bin.tar.gz -C ~/development/


