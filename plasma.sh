sudo pacman -S plasma-desktop dolphin gimp spectacle kate kpipewire dolphin-plugins konsole sddm systemsettings plasma-firewall dragon elisa kcalc sddm-kcm --noconfirm
sudo systemctl enable sddm.service
echo "To enable bluetooth visit https://wiki.archlinux.org/title/bluetooth"
sleep 30
# SDDM themes
# https://github.com/MarianArlt/sddm-chili
# https://github.com/MarianArlt/sddm-sugar-dark