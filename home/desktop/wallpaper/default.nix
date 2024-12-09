{ pkgs, ... }:

{

  # For configuration file of swww
  home.file.".config/waypaper/config.ini".source = ./config_waypaper.ini;

  # For themewp command
  home.file.".config/waypaper/themewp.py".source = ./themewp.py;

  home.packages = with pkgs; [
    swww
    waypaper

    # (pkgs.waypaper.overrideAttrs (oldAttrs: {
    #  buildInputs = oldAttrs.buildInputs ++ [ pkgs.python3Packages.colorthief ];
    # }))

  ];

}