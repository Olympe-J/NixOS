{ pkgs, ... }:

{
  home.packages = with pkgs; [
    lutris
    wineWowPackages.staging
    winetricks
  ];
}