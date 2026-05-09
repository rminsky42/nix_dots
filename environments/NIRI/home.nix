{ pkgs, ... }: {


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
      env = [
        "GTK_THEME,Adwaita:dark"
        "QT_STYLE_OVERRIDE,Adwaita-dark"
        "COLOR_SCHEME,prefer-dark"
        "GTK_APPLICATION_PREFER_DARK_THEME,1"
      ];

      exec-once = [
        "waybar"
      ];

      input = {
        natural_scroll = true;
      };

      binds = [
        "SUPER, F, exec, firefox"
        "SUPER, RETURN, exec, foot"
      ];
    };
  };

  home.stateVersion = "25.11";
}
