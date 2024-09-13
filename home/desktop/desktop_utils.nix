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
        name = "Tokyonight-Dark-B";
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

}