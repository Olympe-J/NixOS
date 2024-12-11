#!/usr/bin/env python3

import sys
import os


def main(args):

    defaut_wp = "~/.config/waypaper/wallpapers/evelynn-kda-3840x2160.jpg"
    red1_wp = "~/.config/waypaper/wallpapers/wallpaper-red1.jpeg"
    red2_wp = "~/.config/waypaper/wallpapers/wallpaper-red2.jpeg"
    orange1_wp = "~/.config/waypaper/wallpapers/macos-sequoia-orange.jpg"
    orange2_wp = "~/.config/waypaper/wallpapers/wallpaper-orange2.png"
    yellow1_wp = "~/.config/waypaper/wallpapers/wallpaper-yellow1.png"
    green1_wp = "~/.config/waypaper/wallpapers/wallpaper-green1.png"
    purple1_wp = "~/.config/waypaper/wallpapers/madeline-trans-purple.jpg"

    if len(args) == 2:

        new_wallpaper = ""
        new_color = ""

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
                os.system('waypaper --wallpaper ' + defaut_wp + ' > /dev/null')
                return
            
            case "red" | "r":
                new_color = "rgba(FF0000FF) rgba(000000FF) 90deg"
                new_wallpaper = red1_wp

            case "red2" | "r2":
                new_color = "rgba(FF0000FF) rgba(000000FF) 90deg"
                new_wallpaper = red2_wp

            case "orange" | "o":
                new_color = "rgba(FF8000FF) rgba(000000FF) 90deg"
                new_wallpaper = orange1_wp

            case "orange2" | "o2":
                new_color = "rgba(FF8000FF) rgba(000000FF) 90deg"
                new_wallpaper = orange2_wp

            case "yellow" | "y":
                new_color = "rgba(FFFF00FF) rgba(000000FF) 90deg"
                new_wallpaper = yellow1_wp

            case "green" | "g":
                new_color = "rgba(00FF00FF) rgba(000000FF) 90deg"
                new_wallpaper = green1_wp

            case "cyan" | "c":
                new_color = "rgba(00FFFFFF) rgba(000000FF) 90deg"

            case "blue" | "b":
                new_color = "rgba(0000FFFF) rgba(000000FF) 90deg"

            case "purple" | "p":
                new_color = "rgba(8000FFFF) rgba(000000FF) 90deg"
                new_wallpaper = purple1_wp
                
            case "purple2" | "p2":
                new_color = "rgba(FF00FFFF) rgba(000000FF) 90deg"
                new_wallpaper = defaut_wp

            case "pink":
                new_color = "rgba(FF80FFFF) rgba(000000FF) 90deg"
            

        if (new_color != ""):
            os.system('hyprctl keyword general:col.active_border "' + new_color + '" > /dev/null')

        if (new_wallpaper != ""):
            os.system('waypaper --wallpaper ' + new_wallpaper + ' > /dev/null')


        os.system('hyprctl keyword general:border_size 3 > /dev/null')

        os.system('hyprctl keyword decoration:inactive_opacity 0.9 > /dev/null')

        os.system('hyprctl keyword decoration:dim_strength 0.2 > /dev/null')
        os.system('hyprctl keyword decoration:dim_inactive 1 > /dev/null')


    else:
        os.system('hyprctl reload > /dev/null')
        os.system('waypaper --wallpaper ' + defaut_wp + ' > /dev/null')


if __name__ == "__main__":
    args = sys.argv
    main(args)
