{

  description = "Olympe's NixOS flake";

  inputs = {

    # NixOS official package source, using the nixos-24.05 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

    # Hyprland
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

    # Home manager for home-scoped config
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # VScode server
    vscode-server.url = "github:nix-community/nixos-vscode-server";

    # Wallpaper swww
    swww.url = "github:LGFae/swww";

    # Ags
    # ags = {
    #   url = "github:Aylur/ags";
    # };

  };

  outputs =
    {
      self,
      nixpkgs,
      hyprland,
      home-manager,
      vscode-server,
      swww,
      # ags,
      ...
    }
    @inputs:
    {

      # Please replace my-nixos with your hostname
      nixosConfigurations.OlympePCP = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = {
          inherit inputs;
        }; # this is the important part for Hyprland
        
        modules = [
          # Import the previous configuration.nix we used,
          # so the old configuration file still takes effect
          ./hosts/OlympePCP/configuration.nix

          # Load Home Manager
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.extraSpecialArgs = {
              inherit inputs;
            };

            home-manager.users.olympe = import hosts/OlympePCP/olympePCP_home.nix;
          }

          # VScode server 
          vscode-server.nixosModules.default
          (
            { config, pkgs, ... }:
            {
              services.vscode-server.enable = true;
            }
          )

        ];
      };

      # Nix fmt
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;

    };

}
