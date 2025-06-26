{
  config,
  pkgs,
  lib,
  ...
}:

{

  programs.vscode.enable = true;

  programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
    ms-vscode.cpptools
    ms-vscode.cpptools-extension-pack
    ms-vscode.makefile-tools
    ms-vscode.cmake-tools
    ms-vscode.live-server
    davidanson.vscode-markdownlint
    jnoortheen.nix-ide
    james-yu.latex-workshop
  ];

}
