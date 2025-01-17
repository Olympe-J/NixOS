{ pkgs, ... }:

{

  home.packages = with pkgs; [

    zsh

    btop

    tree
    zip
    unzip

    neofetch
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
