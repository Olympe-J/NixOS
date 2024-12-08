{ pkgs, ... }:

{

  imports = [
    ./hyprlock
  ];

  home.packages = with pkgs; [
    wofi
    hyprlock
  ];

  # Hyprland configuration file
  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;

  # For wofi
  home.file.".config/wofi/style.css".source = ./wofi_style.css;

  # For theme command
  home.file.".config/hypr/theme.py".source = ./theme.py;

}
