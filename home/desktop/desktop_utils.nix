{
  config,
  pkgs,
  inputs,
  ...
}:

{

  home.packages = with pkgs; [

    # Volume
    pavucontrol
    paprefs

    cavalier

    # Luminosity
    brightnessctl

    # Screenshots
    grimblast

    # Key testing
    wev

    # Wifi
    networkmanagerapplet

    # Bluetooth
    blueman
  ];

  # gtk settings
  gtk = {
      enable = true;
      theme = {
        name = "Tokyonight-Dark";
        package = pkgs.tokyo-night-gtk;
      };
      iconTheme = {
        name = "Tokyonight-Dark";
      };
      cursorTheme = {
        name = "Tokyonight-Dark";
        package = pkgs.bibata-cursors;
      };
    };

  home.pointerCursor = {
    package = pkgs.vanilla-dmz;
    name = "Vanilla-DMZ";
    size = 20;
    gtk.enable = true;
    x11.enable = true;
  };

}