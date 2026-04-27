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

  wayland.windowManager.hyprland.enable = true;

  wayland.windowManager.hyprland.settings = {
    
    monitor = ",preferred,auto,1";

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

    "$mod" = "SUPER";
    bind = 
    [
      "$mod, F, exec, firefox"
      "$mod, RETURN, exec, foot"
      "$mod, C, killactive"
      
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
    

      "$mod, 1, movetoworkspace, 1"
      "$mod, 2, movetoworkspace, 2"
      "$mod, 3, movetoworkspace, 3"
      "$mod, 4, movetoworkspace, 4"
      "$mod, 5, movetoworkspace, 5"
      "$mod, 6, movetoworkspace, 6"
      "$mod, 7, movetoworkspace, 7"
      "$mod, 8, movetoworkspace, 8"
      "$mod, 9, movetoworkspace, 9"
    ];

  }; 

  home.stateVersion = "25.11";
}
