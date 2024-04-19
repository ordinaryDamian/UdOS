# UdOS
UdOS semestral work

The goal of this project is to create a easy installation and distribution of the scripts

The packages needed for this installation are git and your chosen console-based editor ($EDITOR)

$EDITOR = any console based editor like: nano, vim, neovim, micro, ...


## Pre-installation
For this install you will need git and your editor of choice as you will need to modify several configuration files for the full experience, everything will be detailed bellow.

### plymouth.sh
Plymouth is an application which provides a graphical boot experience for Linux.

```bash
sudo $EDITOR /etc/mkinitcpio.conf
```

ppend 'plymouth' at the end of the HOOKS parameter

![alt text](screenshots/image-1.png)

```bash
sudo $EDITOR /etc/default/grub
```
append 'splash' to the GRUB_CMDLINE_LINUX_DEFAULT parameter

you can also append 'quiet' if you want to suppress error and warning messages

![alt text](screenshots/image-2.png)

then run the script

```bash
chmod +x plymouth.sh
./plymouth.sh
```

## During-installation
ou will be asked to provide certain package names. Refer to the following links for more information

https://github.com/adi1090x/plymouth-themes \
https://github.com/VandalByte/dedsec-grub2-theme

to start the install clone this repository, make main.sh executable and launch it
```bash
git clone https://github.com/ordinaryDamian/UdOS
cd UdOS
chmod u+x main.sh
./main.sh
```
## Post-installation
### nerdfonts.sh
script to install nerdfonts, open the file and comment (add # at the begging of the line) which fonts you do not want to install, be aware this script can take a long time to install
```bash
chmod +x nerdfonts.sh
./nerdfonts.sh
```