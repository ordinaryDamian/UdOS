#! /bin/sh

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
source pacman.sh

# download AUR helper
source yayInstall.sh

# Grub dedsec theme
source dedsec.sh

#potom instalacia bud window managera alebo desktopu
# source x.sh

#nakoniec theme, asi ostanem na graphite
# theme.sh
