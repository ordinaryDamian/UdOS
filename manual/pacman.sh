#! /bin/bash

echo "Setting up pacman package manager: "
sudo pacman -S pacman-contrib reflector --noconfirm
echo "Rating mirrors"
# sudo reflector --verbose --protocol https,http --latest 5 --sort rate --country Slovakia,Polland,Germany --save /etc/pacman.d/mirrorlist
sudo reflector --verbose --protocol https,http,ftp --latest 100 --score 100 --sort rate --country SK,CZ,DE,HU,PL --fastest 10 --save /etc/pacman.d/mirrorlist
