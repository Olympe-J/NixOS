{
  config,
  pkgs,
  inputs,
  ...
}:

{
  # add the home manager module
  imports = [ inputs.ags.homeManagerModules.default ];

  # Dependdencies
  home.packages = with pkgs; [

  ];

  programs.ags = {
    enable = true;

    # null or path, leave as null if you don't want hm to manage the config
    # configDir = /home/olympe/.config/ags;

    # additional packages to add to gjs's runtime
    extraPackages = with pkgs; [
      gtksourceview
      webkitgtk
      accountsservice
    ];
  };

}
