{ pkgs, ... }:

{

  home.packages = with pkgs; [

    zsh

    btop

    tree
    zip
    unzip

    fastfetch
    hyfetch

    cmatrix

    killall

    # Disk usage
    gdu

    # File explorer
    superfile

    # For internet 
    tcpdump
    
  ];

}
