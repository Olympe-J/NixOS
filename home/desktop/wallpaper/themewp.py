#====#  #!/usr/bin/env python3

import os
from colorthief import ColorThief

color_thief = ColorThief('/home/olympe/.config/waypaper/currentwallpaper')

dominant_color = color_thief.get_color(quality=100)

mean = (dominant_color[0] +  dominant_color[1] +  dominant_color[2]) / 3

color_str = ""
for color in dominant_color:
    value = color / mean
    if (value < 0.8):
        color_str += "00"
    elif (value < 1.2):
        color_str += "80"
    else:
        color_str += "FF"

print('Theme color : #' + color_str)

bashCommand = 'hyprctl keyword general:col.active_border "rgba(' + color_str + 'FF) rgba(000000FF) 90deg" > /dev/null'

os.system(bashCommand)
