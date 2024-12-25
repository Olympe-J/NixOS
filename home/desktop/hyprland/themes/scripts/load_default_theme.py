#!/usr/bin/env python3

import os

if not os.path.isfile(os.path.realpath(".config/hypr/themes/theme")) :

    # Set symlink and reload hyprland
    os.system('ln -fs ~/.config/hypr/themes/confs/main_theme.conf ~/.config/hypr/themes/theme')
    os.system('hyprctl reload > /dev/null')

    # Notifications
    print("Hyprland has been reloaded for loading theme !")
    os.system('notify-send -t 3000 "Hyprland has been reloaded for loading theme !"')
