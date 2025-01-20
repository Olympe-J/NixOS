{ pkgs, ... }:

{

  imports = [
    ./hyprlock
  ];
  
  home.packages = with pkgs; [
    hyprlock
  ];

  # Hyprland configuration file
  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;

  # For themes
  home.file.".config/hypr/themes" = {
    source = ./themes;
    recursive = true;
  };

  # For scripts
  home.file.".config/hypr/scripts" = {
    source = ./scripts;
    recursive = true;
  };

}
