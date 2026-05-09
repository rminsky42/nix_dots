{ pkgs, ... }: {


  home.username = "rm";
  home.homeDirectory = "/home/rm";

  programs.home-manager.enable = true;
  
  home.stateVersion = "25.11";
}
