#! /run/current-system/sw/bin/sh

chosen=$(printf "Default
Start
Music
Cyberpunk
Red
Red2
Orange
Orange2
Yellow
Green
Cyan
Blue
Purple
Purple2
Pink
Wallpaper" | rofi -dmenu -i -config ~/.config/rofi/configs/thememenu.conf)

if [[ "$chosen" == "Wallpaper" ]]; then
    python3 ~/.config/waypaper/themewp.py
else
    python3 ~/.config/hypr/themes/scripts/theme.py "$chosen"
fi
