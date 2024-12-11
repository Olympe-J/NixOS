#!/usr/bin/env python3

import sys
import os


def main(args):

    if len(args) == 2:

        color = ""

        match args[1]:

            case "help" | "h":
                print("theme <theme> : set theme, alias: th")
                print("      <theme> : red|r, red2|r2, orange|o, orange2|o2, yellow|y, green|g, cyan|c, blue|b, purple|p, purple2|p2, pink")
                print("themewp : set theme based on wallpaper, alias: thwp")
                return

            case "start" | "s":
                os.system('hyprctl dispatch -- exec "[workspace 2 silent] firefox" > /dev/null')
                os.system('hyprctl dispatch -- exec "[workspace 9 silent] signal-desktop" > /dev/null')
                os.system('hyprctl dispatch -- exec "[workspace 10 silent] discord" > /dev/null')
                return

            case "music" | "m":
                os.system('hyprctl dispatch -- exec "[workspace 2] NickvisionCavalier.GNOME" > /dev/null')
                os.system('hyprctl dispatch -- exec "[workspace 1] firefox https://music.youtube.com/" > /dev/null')
                os.system('hyprctl reload > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/evelynn-kda-3840x2160.jpg > /dev/null')
                return
            
            case "red" | "r":
                color = "rgba(FF0000FF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/wallpaper-red1.jpeg > /dev/null')

            case "red2" | "r2":
                color = "rgba(FF0000FF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/wallpaper-red2.png > /dev/null')

            case "orange" | "o":
                color = "rgba(FF8000FF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/macos-sequoia-orange.jpg > /dev/null')

            case "orange2" | "o2":
                color = "rgba(FF8000FF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/wallpaper-orange2.png > /dev/null')

            case "yellow" | "y":
                color = "rgba(FFFF00FF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')

            case "green" | "g":
                color = "rgba(00FF00FF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/wallpaper-green1.png > /dev/null')

            case "cyan" | "c":
                color = "rgba(00FFFFFF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')

            case "blue" | "b":
                color = "rgba(0000FFFF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')

            case "purple" | "p":
                color = "rgba(8000FFFF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/madeline-trans-purple.jpg > /dev/null')
                
            case "purple2" | "p2":
                color = "rgba(FF00FFFF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
                os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/evelynn-kda-3840x2160.jpg > /dev/null')

            case "pink":
                color = "rgba(FF80FFFF) rgba(000000FF) 90deg"
                os.system('hyprctl keyword general:col.active_border "' + color + '" > /dev/null')
            

        os.system('hyprctl keyword general:border_size 3 > /dev/null')

        os.system('hyprctl keyword decoration:inactive_opacity 0.9 > /dev/null')

        os.system('hyprctl keyword decoration:dim_strength 0.2 > /dev/null')
        os.system('hyprctl keyword decoration:dim_inactive 1 > /dev/null')


    else:
        os.system('hyprctl reload > /dev/null')
        os.system('waypaper --wallpaper /etc/nixos/home/desktop/wallpaper/nixosWallpapers/evelynn-kda-3840x2160.jpg > /dev/null')


if __name__ == "__main__":
    args = sys.argv
    main(args)
