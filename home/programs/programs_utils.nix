{ pkgs, ... }:

{

  home.packages = with pkgs; [

    vlc
    gimp
    filezilla

    discord
    signal-desktop
    obsidian

    keepassxc
    dropbox
    syncthing

    gdb
    gnumake
    cmake
    qemu
    valgrind
    gcc
    binutils

    python3

    gnupg
    
  ];

}
