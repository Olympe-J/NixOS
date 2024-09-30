{
  config,
  pkgs,
  lib,
  ...
}:

{

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      ms-vscode.cpptools
      ms-vscode.cpptools-extension-pack
      ms-vscode.makefile-tools
      ms-vscode.cmake-tools
      davidanson.vscode-markdownlint
      bbenoist.nix
    ];
  };

}
