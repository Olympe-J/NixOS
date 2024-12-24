{ pkgs, ... }:

{

  home.packages = with pkgs; [

    # Emails
    holehe

    # Exiftool
    exif 

  ];

}