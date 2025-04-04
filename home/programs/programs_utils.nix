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

    # Docker
    docker-compose

    # Make windows usb key
    woeusb-ng

    # Repair XFS device
    xfsprogs

    # python3

    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [

      scipy
      numpy
      colorthief

      # mkdocs
      # mkdocs-material

      htmlhint
      
    ]))

  ];

}
