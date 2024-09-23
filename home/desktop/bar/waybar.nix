{ pkgs, ... }:

{

  home.packages = with pkgs; [
    waybar
  ];

  # For waybar
  home.file.".config/waybar/style.css".source = ./style.css;
  home.file.".config/waybar/config".source = ./config.json;

}