{ pkgs, ... }: {

  imports = [
    ../../modules/foot.nix
  ];

  home.username = "rm";
  home.homeDirectory = "/home/rm";

  programs.home-manager.enable = true;
  
  home.packages = [ 
    pkgs.htop 
    pkgs.git 
    pkgs.firefox
    pkgs.foot
    pkgs.vscode
  ];

  programs.vscode = {
    enable = true;
  };

  programs.plasma = {
    enable = true;
    workspace = {
      theme = "breeze-dark";
      lookAndFeel = "org.kde.breezedark.desktop";
    };

  };

  home.stateVersion = "25.11";
}
