{
  config,
  pkgs,
  inputs,
  ...
}:

{

  imports = [
    ./desktop_utils.nix
    ./hyprland
    ./notification_center
    ./wallpaper
    ./bar
  ];

}
