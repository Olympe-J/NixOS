#! /run/current-system/sw/bin/sh

chosen=$(printf "Lock\nShutdown\nReboot\nExit\n" | rofi -dmenu -i -config ~/.config/rofi/configs/powermenu.conf)

case "$chosen" in
    "Lock") hyprlock;;
    "Shutdown") shutdown now;;
    "Reboot") reboot;;
    "Exit") hyprctl dispatch exit;;
esac