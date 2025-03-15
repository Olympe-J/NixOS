{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gh
    lazygit
  ];

  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;

    userName = "Olympe-J";
    userEmail = "olympe.jouslin@gmail.com";

    # signing = {
    #   key = "";
    #   signByDefault = true;
    # };

    aliases = {
      logl = "log --all --decorate --oneline --graph";
    };
  };

  services.ssh-agent.enable = true;

}