{ config, lib, pkgs, ... }:

let
  peer-port = 5000;
  web-port = 8112;
in {
  
  services.rtorrent = {
    enable = true;
    port = peer-port;
    package = pkgs.jesec-rtorrent; # currently (2024-12-30) rtorrent 0.15.0 in nixpkgs unstable is incompatible with flood, this is why a fork is used
    openFirewall = true;
  };

  # Flood 
  # services.flood = {
  #   enable = true;
  #   port = web-port;
  #   openFirewall = true;
  #   extraArgs = ["--rtsocket=${config.services.rtorrent.rpcSocket}"];
  # };

  # allow access to the socket by putting it in the same group as rtorrent service
  # the socket will have g+w permissions
  # systemd.services.flood.serviceConfig.SupplementaryGroups = [ config.services.rtorrent.group ];

  services = {

    nginx = {
      enable = true;
      virtualHosts."127.0.0.1" = {
        enableACME = false;
        addSSL = false;
      };
    };

    rutorrent = {
      enable = true;
      hostName = "127.0.0.1";
      nginx = {
        enable =  true;
      };
      # they shouldn't be required with the default config but its pretty neat stuff that comes for free
      # basically as its part of the repo already
      plugins = [
        "httprpc"
        "data" # adds an http download optoion to the files tab 
        "diskspace"  #well shows diskspace
        "edit" # allows you to edit trackers of a torrent
        "erasedata"  # allows deleting a torrent AND erasing data
        "theme" #allows custom themes
        "trafic" #traffic stats (yes its spelled like this)
        "seedingtime" #see 
        "create"  #make torrents
        "rss" #can use feeds
        "throttle" #set speed limitations for torrents
        #"cookies" #if sb needs to auth to tracker with cookies
        #"retrackers" automatically adds our trackers tofiles
        "scheduler" #allows to set speed/ul/dl limitations based on daytime/time frames
        #"autotools" #do shit on lets say completed dl
        "datadir" #so you can change it
        "geoip" #so you can see nice lil country flags
        "tracklabels" # make a label for eachtracker
        "ratio" #ratio limits
        #"unpack" # so you can unrar/unzip downloaded shit
        "extsearch" # internal search function to many public/private trackers
        #"loginmgr" # for sites when cookies fail to use rss/pluginextsearch
        #"rssurlrewrite" # rewrite http links for rss feeds with regular expressions
        #"feeds"
        "mediainfo"
        #"history"
        "screenshots"
        "spectrogram" #show the spectogram of torrent files
        "_task" # dependency for some of the plugins
        "uploadeta" #shows ETA
        "bulk_magnet" #pulk operations with magnets
  
        "check_port" #check if were connectable
        "filedrop" #drop files into it (multiple)
        "source" #download torrent file from ui back to client
        "_getdir" #comfortable host fs navitator bar
      ];
    };
    
  };

}
