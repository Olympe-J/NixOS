#!/usr/bin/env python3

import os

if not os.path.isfile(os.path.realpath("../theme")) :
    os.system('ln -fs ~/.config/hypr/themes/confs/main_theme.conf ~/.config/hypr/themes/theme')
    os.system('hyprctl reload > /dev/null')
    print("Hyprland has been reloaded for loading theme !")
