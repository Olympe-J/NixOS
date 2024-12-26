{ pkgs, ... }:

{

  home.file.".config/mako/mako.conf".source = ./mako.conf;

  home.packages = with pkgs; [
    # mako
    libnotify
  ];

}