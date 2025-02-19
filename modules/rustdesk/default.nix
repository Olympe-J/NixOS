{ inputs, pkgs, ... }:

{
  
  services = {
    rustdesk-server = {
        enable = true;
    };
  };

}
