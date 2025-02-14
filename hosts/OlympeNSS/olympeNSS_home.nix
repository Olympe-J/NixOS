{
  config,
  pkgs,
  inputs,
  ...
}:

{

  imports = [
    ../../home/programs/git.nix
    ../../home/programs/torrents
    ../../home/shell/programs
    ../../home/shell/vim
    ../../home/shell/zsh
  ];

  home = {
    username = "olympe";
    homeDirectory = "/home/olympe";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
