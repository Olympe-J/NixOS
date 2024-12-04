{
  config,
  pkgs,
  lib,
  ...
}:

{

  programs.hyprlock = {

    enable = true;

    settings = {

        # Hyprlock configuration
        background = {
            monitor = "";
            path = "/home/olympe/.config/waypaper/currentwallpaper";   # supports png, jpg, webp (no animations, though)
            color = "rgba(25, 20, 20, 1.0)";
            # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
            blur_passes = 2; # 0 disables blurring
            blur_size = 7;
            noise = 0.0117;
            contrast = 0.8916;
            brightness = 0.8172;
            vibrancy = 0.1696;
            vibrancy_darkness = 0.0;
        };

        # Time
        label = [
            {
                monitor = "";
                text = "cmd[update:1000] echo \"<span>$(date +\"%H:%M\")</span>\"";
                color = "rgba(255, 255, 255, 0.9)";
                font_size = 130;
                font_family = "SF Pro  Display Bold";
                position = "0, 360";
                halign = "center";
                valign = "center";
            }
            {
                monitor = "";
                text = "Bienvenue, $USER";
                text_align = "center"; # center/right or any value for default left. multi-line text alignment inside label container
                color = "rgba(255, 255, 255, 1.0)";
                font_size = 25;
                font_family = "SF Pro Display Bold";
                rotate = 0; # degrees, counter-clockwise

                position = "0, -40";
                halign = "center";
                valign = "center";
            }
        ];

        image = [
            {
                monitor = "";
                path = "/etc/nixos/home/desktop/hyprland/hyprlock/images/profilePictures/pp2.jpeg";
                size = 150; # lesser side if not 1:1 ratio
                rounding = -1; # negative values mean circle
                border_size = 2;
                border_color = "rgba(255, 255, 255, 0.75)";
                rotate = 0; # degrees, counter-clockwise
                reload_time = -1; # seconds between reloading, 0 to reload with SIGUSR2
                reload_cmd = ""; # command to get new path. if empty, old path will be used. don't run "follow" commands like tail -F
                position = "0, 100";
                halign = "center";
                valign = "center";
            }
            {
                monitor = "";
                path = "/etc/nixos/home/desktop/hyprland/hyprlock/images/nixos_logo_512.png";
                size = 96; # lesser side if not 1:1 ratio
                rounding = 0; # negative values mean circle
                border_size = 0;
                border_color = "rgba(255, 255, 255, 0)";
                rotate = 0; # degrees, counter-clockwise
                reload_time = -1; # seconds between reloading, 0 to reload with SIGUSR2
                reload_cmd = ""; # command to get new path. if empty, old path will be used. don't run "follow" commands like tail -F
                position = "0, 50";
                halign = "center";
                valign = "bottom";
            }
        ];

        input-field = {
            monitor = "";
            size = "250, 50";
            outline_thickness = 0;
            dots_size = 0.3; # Scale of input-field height, 0.2 - 0.8
            dots_spacing = 0.2; # Scale of dots' absolute size, 0.0 - 1.0
            dots_center = true;
            dots_rounding = -1; # -1 default circle, -2 follow input-field rounding
            outer_color = "rgba(0, 0, 0, 0)";
            inner_color = "rgba(255, 255, 255, 0.3)";
            font_color = "rgb(255, 255, 255)";
            fade_on_empty = true;
            fade_timeout = 1000; # Milliseconds before fade_on_empty is triggered.
            placeholder_text = "<i>Password</i>"; # Text rendered in the input box when it's empty.
            hide_input = false;
            rounding = -1; # -1 means complete rounding (circle/oval)
            check_color = "rgb(255, 255, 255)";
            fail_color = "rgb(204, 34, 34)"; # if authentication failed, changes outer_color and fail message color
            fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>"; # can be set to empty
            fail_timeout = 2000; # milliseconds before fail_text and fail_color disappears
            fail_transition = 300; # transition time in ms between normal outer_color and fail_color
            capslock_color = -1;
            numlock_color = -1;
            bothlock_color = -1; # when both locks are active. -1 means don't change outer color (same for above)
            invert_numlock = false; # change color if numlock is off
            swap_font_color = false; # see below
            position = "0, -100";
            halign = "center";
            valign = "center";
        };

    };

  };

}