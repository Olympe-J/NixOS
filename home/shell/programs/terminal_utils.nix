{ pkgs, ... }:

{

  home.packages = with pkgs; [

    btop

    tree
    zip
    unzip

    neofetch

    killall
  ];

}
