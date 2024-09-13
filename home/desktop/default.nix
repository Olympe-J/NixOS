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
    ./wallpaper
    ./bar
  ];

}
