{ pkgs, config, ... }: {


  home.username = "rm";
  home.homeDirectory = "/home/rm";

  programs.home-manager.enable = true;
  
  home.packages = [ 
    pkgs.htop 
    pkgs.git 
    pkgs.firefox
    pkgs.foot 
    pkgs.waybar
    ];

  programs.foot.enable = true;  

  programs.niri = {
    enable = true;
    settings = {

      binds = with config.lib.niri.actions; {
        "Mod+Return".action = spawn "foot";
        "Mod+C".action = quit;
        "Mod+F".action = spawn "firefox";
      };
    };
  };

  home.stateVersion = "25.11";  
}
