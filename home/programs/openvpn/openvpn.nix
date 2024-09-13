{ pkgs, config, ... }:

{
  
  home.packages = with pkgs; [
    pkgs.openvpn
  ];


  # services.openvpn.servers = {
  #   Ensimag-VPN-ETU-udp = { config = '' config /home/olympe/.vpn/Ensimag-VPN-ETU-udp.ovpn ''; };
  # };

}
