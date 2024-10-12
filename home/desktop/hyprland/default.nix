{ pkgs, ... }:

{

  home.packages = with pkgs; [
    wofi
    hyprlock
  ];

  # Hyprland configuration file
  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;

  # For wofi
  home.file.".config/wofi/style.css".source = ./wofi_style.css;

  # For hyprlock
  home.file.".config/hypr/hyprlock.conf".source = ./hyprlock.conf;
  # Or
  imports = [
    # ./hyprlock
  ];

}
