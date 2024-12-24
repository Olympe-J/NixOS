{ config, inputs, pkgs, ... }:

{

  home.packages = with pkgs; [
    gnumake
    gcc
    fd
    nodejs
    tree-sitter
  ];

  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      rust-analyzer
    ];
  };

  # home.file.".config/nvim/" = {
  #   source = ./config;
  #   recursive = true;
  # };

}