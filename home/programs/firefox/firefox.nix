{ pkgs, config, ... }:

{
  programs = {
    firefox = {
      enable = true;
      package = pkgs.firefox-wayland;
    };
  };
}
