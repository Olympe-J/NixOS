{ inputs, pkgs, ... }:

{
  
  services = {
    rustdesk-server = {
        enable = true;
        signal.relayHosts = [ "93.127.158.67" ];
    };
  };

}
