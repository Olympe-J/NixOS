{ pkgs, ... }:

{

  home.file.".config/waypaper/config.ini".source = ./config_waypaper.ini;
  home.file.".config/waypaper/themewp.py".source = ./themewp.py;

  home.packages = with pkgs; [
    swww
    waypaper

    # (pkgs.waypaper.overrideAttrs (oldAttrs: {
    #  buildInputs = oldAttrs.buildInputs ++ [ pkgs.python3Packages.colorthief ];
    # }))

  ];

}