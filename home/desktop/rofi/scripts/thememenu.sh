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
Pink" | rofi -dmenu -i -config ~/.config/rofi/configs/thememenu.conf)

python3 ~/.config/hypr/themes/scripts/theme.py "$chosen"
