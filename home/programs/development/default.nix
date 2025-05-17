{ pkgs, ... }:

{
  
  home.packages = with pkgs; [
    
    gnupg

    # GCC
    gcc

    # Blender
    blender

    # Godot game engine
    godot_4



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
