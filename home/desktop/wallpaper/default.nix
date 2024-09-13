{ pkgs, ... }:

{

  # home.file.".config/waypaper/config.ini".source = ./config_waypaper.ini;

  home.packages = with pkgs; [
    swww
    waypaper
  ];

}