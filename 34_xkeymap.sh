#!/bin/bash

mkdir -p ~/.config/autostart

# ~/.config/autostart/setxkbmap.desktop
echo [Desktop Entry] >> ~/.config/autostart/setxkbmap.desktop
echo Type=Application >> ~/.config/autostart/setxkbmap.desktop
echo "Exec=setxkbmap gb" >> ~/.config/autostart/setxkbmap.desktop
echo Hidden=false >> ~/.config/autostart/setxkbmap.desktop
echo NoDisplay=false >> ~/.config/autostart/setxkbmap.desktop
echo X-GNOME-Autostart-enabled=true >> ~/.config/autostart/setxkbmap.desktop
echo "Name=Set UK Keyboard" >> ~/.config/autostart/setxkbmap.desktop
echo "Comment=Set keyboard layout to GB" >> ~/.config/autostart/setxkbmap.desktop
