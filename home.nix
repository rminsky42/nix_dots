{ pkgs, ... }: {


  home.username = "rm";
  home.homeDirectory = "/home/rm";

  programs.home-manager.enable = true;
  
  home.packages = [ 
    pkgs.htop 
    pkgs.git 
    pkgs.firefox
    pkgs.foot
  ];

  programs.foot.enable = true;

  programs.plasma = {
    enable = true;
    workspace = {
      theme = "breeze-dark";
      lookAndFeel = "org.kde.breezedark.desktop";
    };

  };

  home.stateVersion = "25.11";
}
