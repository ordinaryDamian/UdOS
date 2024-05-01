#!/usr/bin/env bash
sudo pacman -S plasma-desktop kvantum  dolphin discover gimp spectacle kate kpipewire dolphin-plugins konsole sddm systemsettings plasma-firewall dragon elisa kcalc sddm-kcm udiskie kcharselect kdf plasma-systemmonitor packagekit-qt6 fwupd --noconfirm
sudo systemctl enable sddm.service
yay -S ocs-url --noconfirm
sleep 5
# SDDM themes
# https://github.com/MarianArlt/sddm-chili
# https://github.com/MarianArlt/sddm-sugar-dark