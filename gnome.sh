#!/usr/bin/env bash
sudo pacman -S gnome gnome-tweaks cheese file-roller gedit gnome-notes gnome-photos gnome-terminal gnome-calculator gnome-disk-utility gnome-characters gnome-system-monitor --noconfirm 
sudo systemctl enable gdm.service
sleep 5