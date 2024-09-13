{ pkgs, ... }:

{

  home.packages = with pkgs; [

    vlc
    gimp

    discord
    signal-desktop

    keepassxc
    dropbox
    syncthing

    gdb
    gnumake
    cmake
    qemu
    #libgccjit
    gcc
    binutils

    python3
  ];

}
