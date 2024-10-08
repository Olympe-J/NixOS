{ inputs, pkgs, ... }:
{

  services = {

    displayManager = {
      defaultSession = "hyprland";
    };
    # Enable the windowing system
    xserver = {
      enable = true;
      xkb.layout = "fr";
      xkb.variant = "azerty";
      displayManager.gdm = {
        enable = true;
        wayland = true;
      };
    };

    # Enable dbus
    dbus.enable = true;
  };

  programs.hyprland = {
    enable = true;
    # package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };

  nix.settings = {
    substituters = [ "https://hyprland.cachix.org" ];
    trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
  };

}
