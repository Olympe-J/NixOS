{
  pkgs,
  ...
}:

{

  home.packages = with pkgs; [
    rofi-wayland
  ];

  # Make a copy of the rofi configs
  home.file.".config/rofi/configs" = {
    source = ./configs;
    recursive = true;
  };

  # Make a copy of the rofi scripts
  home.file.".config/rofi/scripts" = {
    source = ./scripts;
    recursive = true;
  };

  # Make a copy of the rofi themes
  home.file.".config/rofi/themes" = {
    source = ./themes;
    recursive = true;
  };

}