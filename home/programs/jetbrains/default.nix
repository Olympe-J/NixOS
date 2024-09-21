{ pkgs, config, ... }:

{
  
  home.packages = with pkgs; [
    jetbrains.idea-ultimate
    jetbrains.pycharm-professional
    jetbrains.clion
  ];

}
