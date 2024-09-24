{ pkgs, ... }:

{

  home.packages = with pkgs; [

    vlc
    gimp

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
    gtest

    python3
  ];

}
