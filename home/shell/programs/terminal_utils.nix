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

    # For internet 
    tcpdump
    
  ];

}
