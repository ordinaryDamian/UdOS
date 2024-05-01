#!/usr/bin/env bash
sudo pacman -S ly --noconfirm
sudo systemctl enable ly.service

sudo pacman -S feh dmenu polybar bspwm sxhkd firefox neovim gimp flameshot nemo --noconfirm
sudo pacman -S inkscape alacritty kitty tmux --noconfirm
sudo pacman -S thunar pcmanfm rsync --noconfirm
sudo pacman -S autorandr --noconfirm

# Rofi dependecies
sudo pacman -S ncmpcpp xfce4-settings polkit xfce4-power-manager brightnessctl mpd mpc maim --noconfirm
sudo pacman -S dunst picom xclip pamixer pavucontrol bat --noconfirm
yay -S betterlockscreen light nomacs --noconfirm

#TODO: naucit sa ako spustit rofi scripty
# https://github.com/adi1090x/rofi
sudo pacman -S rofi --noconfirm
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

# TODO: pozriet sa ci toto funguje(posuvanie filou) a pridat top-bar files
# https://aur.archlinux.org/packages/polybar-scripts-git
mkdir -p $HOME/.config/{bspwm,sxhkd,dunst,polybar,picom,wallpaper}
git clone https://github.com/ordinaryDamian/Linux
cd Linux

cp ./launch.sh $HOME/.config/polybar/launch.sh
chmod +x $HOME/.config/polybar/launch.sh

cp /etc/polybar/config.ini $HOME/.config/polybar/config.ini

cp ./.bin $HOME/.config/.bin
chmod +x $HOME/.config/.bin/*
cp ./wallpaper.jpg $HOME/.config/wallpaper/wallpaper.jpg

cp ./bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/bspwm/bspwmrc
cp ./sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
# chmod +x $HOME/.config/sxhkd/sxhkdrc

#sudo pacman -S qt5ct --noconfirm
# echo And modify the file /etc/environment as sudo an add the following line: QT_QPA_PLATFORMTHEME=qt5ct
