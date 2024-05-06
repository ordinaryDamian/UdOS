#!/usr/bin/env bash
sudo pacman -S ly --noconfirm
sudo systemctl enable ly.service

sudo pacman -S feh dmenu polybar bspwm sxhkd firefox neovim gimp flameshot nemo --noconfirm
sudo pacman -S inkscape alacritty kitty tmux wezterm --noconfirm
sudo pacman -S pcmanfm rsync obs-studio obsidian --noconfirm
sudo pacman -S autorandr xorg-xsetroot xorg-xrandr --noconfirm

# Rofi dependecies
sudo pacman -S ncmpcpp xfce4-settings polkit xfce4-power-manager brightnessctl mpd mpc maim --noconfirm
sudo pacman -S dunst picom xclip pamixer pavucontrol bat python-pywal calc  --noconfirm
yay -S betterlockscreen light nomacs networkmanager-dmenu-git --noconfirm

#TODO: naucit sa ako spustit rofi scripty
# https://github.com/adi1090x/rofi
sudo pacman -S rofi --noconfirm
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
echo "PATH=$PATH:~/.config/rofi/scripts" >> ~/.profile
# TODO: pridat do sxhkdrc
# entering t7_launcher in the terminal (or executing this command) will summon the type-7 launcher

# TODO: pozriet sa ci toto funguje(posuvanie filou) a pridat top-bar files
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
./setup.sh

cp ./wallpaper.jpg $HOME/.config/wallpaper/wallpaper.jpg

cp ./bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/bspwm/bspwmrc
cp ./sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
chmod +x $HOME/.config/sxhkd/sxhkdrc

#sudo pacman -S qt5ct --noconfirm
# echo And modify the file /etc/environment as sudo an add the following line: QT_QPA_PLATFORMTHEME=qt5ct
