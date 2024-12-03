{ pkgs, ... }:

{

  home.packages = with pkgs; [

    vlc
    gimp
    filezilla
    tor-browser
    gparted
    libreoffice-qt
    texlive.combined.scheme-full

    discord
    signal-desktop
    obsidian
    anki

    keepassxc
    dropbox
    syncthing

    python3

    gnupg

    # For OS
    
    gcc
    # gdb
    # gnumake
    # cmake
    # qemu
    # valgrind
    # binutils

    # For internet
    wireshark

  ];

}
