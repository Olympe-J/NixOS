{
  config,
  pkgs,
  inputs,
  lib,
  ...
}:

{

  # Fonts for system and TWM
  fonts = {
    packages = with pkgs; [
      # icon fonts
      material-design-icons

      # normal fonts
      hack-font
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-emoji
      noto-fonts-extra

      # nerdfonts
      nerd-fonts.hack
    ];

    # use fonts specified by user rather than default ones
    enableDefaultPackages = false;

    # Do I need this?
    fontconfig.defaultFonts = {
      serif = [ ];
      sansSerif = [ ];
      monospace = [ ];
      emoji = [ ];
    };
  };


  boot.plymouth.enable = false;

  appstream.enable = false;
  services.lvm.enable = false;

  programs.command-not-found.enable = false;
  # programs.nano.enable = false;

  services.nscd.enable = false;
  system.nssModules = lib.mkForce [];


  # Auto-cleaning
  # nix.gc = {
  #   automatic = true;
  #   dates = "weekly";
  #   options = "--delete-older-than 30d";
  # };

}