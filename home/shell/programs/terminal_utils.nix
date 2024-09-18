{ pkgs, ... }:

{

  home.packages = with pkgs; [

    zsh

    btop

    tree
    zip
    unzip

    neofetch

    killall
  ];

}
