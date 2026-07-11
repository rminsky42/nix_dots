{ pkgs, config, inputs, ... }: {

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

  programs.foot.enable = true;  

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "Bibata-Modern-Ice"; # Replace with your preferred cursor theme
    size = 32;                # Set the size (e.g., 24, 32, 48)
    package = pkgs.bibata-cursors;
  };

  programs.niri = {
    enable = true;



    settings = {

      binds = with config.lib.niri.actions; {
        "Mod+D".action.spawn = ["noctalia" "msg" "panel-toggle" "launcher"];

        "Mod+Return".action = spawn "foot";
        "Mod+C".action = close-window;
        "Mod+F".action = spawn "firefox";

        "Mod+H".action = focus-column-left;
        "Mod+L".action = focus-column-right;
        "Mod+J".action = focus-window-down;
        "Mod+K".action = focus-window-up;

        #Change Workspace
        "Mod+1".action = focus-workspace 1;
        "Mod+2".action = focus-workspace 2;
        "Mod+3".action = focus-workspace 3;
        "Mod+4".action = focus-workspace 4;

        #Move Window to Workspace
        "Mod+Shift+1".action.move-window-to-workspace = 1;
        "Mod+Shift+2".action.move-window-to-workspace = 2;
        "Mod+Shift+3".action.move-window-to-workspace = 3;
        "Mod+Shift+4".action.move-window-to-workspace = 4;

        #Shift Left/Right
        "Mod+Shift+H".action = move-column-left;
        "Mod+Shift+L".action = move-column-right;

        # Increase monitor brightness by 10%
        "XF86MonBrightnessUp".action.spawn = [ "brightnessctl" "set" "+10%" ];
        "XF86MonBrightnessUp".allow-when-locked = true;

        # Decrease monitor brightness by 10%
        "XF86MonBrightnessDown".action.spawn = [ "brightnessctl" "set" "10%-" ];
        "XF86MonBrightnessDown".allow-when-locked = true;

        # Increase volume by 5%
        "XF86AudioRaiseVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+" ];
        "XF86AudioRaiseVolume".allow-when-locked = true;

        # Decrease volume by 5%
        "XF86AudioLowerVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%-" ];
        "XF86AudioLowerVolume".allow-when-locked = true;

        # Toggle mute
        "XF86AudioMute".action.spawn = [ "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle" ];
        "XF86AudioMute".allow-when-locked = true;
      };
    };
  };

  programs.noctalia = {
    enable = true;
    systemd.enable = true;
  };

  home.stateVersion = "25.11";  
}
