#! /bin/sh
# Sources:
# https://wiki.archlinux.org/title/VirtualBox/Install_Arch_Linux_as_a_guest
# https://github.com/K4rlosReyes/arch-bspwm
# https://wiki.archlinux.org/title/Systemd/Timers CRON and Timers
echo Did you set up pacman ?

sudo pacman -Syyu --noconfirm

echo "Installing Xorg and graphics drivers"
sudo pacman -S xorg-server --noconfirm
sudo pacman -S xorg-apps --noconfirm
sudo pacman -S virtualbox-host-modules-arch virtualbox-guest-utils --noconfirm
sudo pacman -S xdg-user-dirs --noconfirm
xdg-user-dirs-update
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S xorg-xman --noconfirm

echo "Installing system tools"
sudo pacman -S curl zip unzip mlocate exa wget tilix openssl openssh git net-tools tldr trash-cli tar --noconfirm
sudo pacman -S man cowsay btop htop cmatrix brightnessctl ripgrep fd npm python hwinfo usbutils --noconfirm

echo "Installing Printer suuport (CUPS)"
sudo pacman -S cups cups-pdf print-manager --noconfirm
sudo systemctl enable cups.socket

echo "Installing networking tools"
sudo pacman -S avahi networkmanager network-manager-applet --noconfirm

echo "Installing applications"  
sudo pacman -S thunderbird mpv obs-studio tilix arandr ark ntfs-3g obsidian pulseaudio pulseaudio-alsa pulseaudio-bluetooth yt-dlp noto-fonts-emoji pcmanfm firefox  --noconfirm

echo "Installing office package"
sudo pacman -S libreoffice-fresh-en-gb libreoffice-extension-texmaths libreoffice-extension-writer2latex --noconfirm
sudo pacman -S fastfetch --noconfirm
sudo pacman -S starship --noconfirm
sudo pacman -S dunst picom --noconfirm
sudo pacman -S ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm
yay -S nerd-fonts-jetbrains-mono --noconfirm
yay -S themechanger-git --noconfirm
yay -S brave-bin --noconfirm
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service




