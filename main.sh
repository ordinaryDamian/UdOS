#! /bin/bash

# Check if the user is root
if [ "$USER" = "root" ]; then
    echo "You are root. Create a normal user and user that user to run this script. Exiting script."
    exit 1
fi

# Check if the user has a home folder
if [ ! -d "/home/$USER" ]; then
    echo "You do not have a home folder. Exiting script."
    exit 1
fi

# Check for internet connection by pinging Google DNS server
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "You have an internet connection. Starting installation"
else
    echo "You do not have an internet connection. Exiting script."
    exit 1
fi

sleep 5

for file in *.sh; do
    chmod +x "$file"
done
echo "All .sh files in the directory are now executable."

#Update pacman.conf
source $HOME/UdOS/pacman.sh

# download AUR helper
source $HOME/UdOS/yayInstall.sh

# Grub dedsec theme
source $HOME/UdOS/dedsec.sh

#potom instalacia bud window managera alebo desktopu

echo "Base Xorg installation and display server installation"
source $HOME/UdOS/programs.sh

echo "Installing desktop enviroment, chose one of the following and write (1/2/3):"
while true; do
    read -p "bspwm - 1 GNOME - 2 Plasma - 3  Choose desktop environment: " desktop

    case $desktop in
        1)
            source $HOME/UdOS/bspwm.sh
            break
            ;;
        2)
            source $HOME/UdOS/gnome.sh
            break
            ;;
        3)
            source $HOME/UdOS/plasma.sh
            break
            ;;
        *)
            echo "Invalid option. Please choose a valid option."
            ;;
    esac
done


#nakoniec theme, asi ostanem na graphite
source $HOME/UdOS/theme.sh
sudo updatedb
echo "Installation complete. Reboot your system."
echo "After you login, you can change the theme or extend your system with ArchLinux Tweak Tool."