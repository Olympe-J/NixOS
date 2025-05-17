{ pkgs, ... }:

{

  home.packages = with pkgs; [

    vlc
    gimp
    filezilla
    tor-browser
    libreoffice-qt
    texlive.combined.scheme-full

    discord
    signal-desktop
    obsidian
    anki

    keepassxc
    dropbox
    syncthing

    # 3D printing
    orca-slicer

    # Chiffrement
    veracrypt

    # For OS
    # gdb
    # gnumake
    # cmake
    # qemu
    # valgrind
    # binutils

    # For internet
    wireshark

    # Docker
    docker-compose

    # Make windows usb key
    woeusb-ng

    # Repair XFS device
    xfsprogs

  ];

}
