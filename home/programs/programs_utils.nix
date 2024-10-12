{ pkgs, ... }:

{

  home.packages = with pkgs; [

    vlc
    gimp
    filezilla
    gparted

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
    gdb
    gnumake
    cmake
    qemu
    valgrind
    gcc
    binutils

    # For internet
    tcpdump
    wireshark
  ];

}
