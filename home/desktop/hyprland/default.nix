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

  # For themes
  home.file.".config/hypr/themes" = {
    source = ./themes;
    recursive = true;
  };


  # For wofi
  home.file.".config/wofi/style.css".source = ./wofi_style.css;

}
