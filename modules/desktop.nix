{ pkgs, ... }:

{
  # -----------------------------------------
  # --------------- HYPRLAND ----------------
  # -----------------------------------------

  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";



  # -----------------------------------------
  # --------------- DMS-shell ---------------
  # -----------------------------------------

  programs.dms-shell = {
    enable = true;
    systemd = {
    enable = true;             # Systemd service for auto-start
    restartIfChanged = true;   # Auto-restart dms.service when dms-shell changes
    };
  
    enableSystemMonitoring = true;     # System monitoring widgets (dgop)
    enableDynamicTheming = true;       # Wallpaper-based theming (matugen)
    enableAudioWavelength = true;      # Audio visualizer (cava)
  };



  # -----------------------------------------
  # --------------- DMS-greeter -------------
  # -----------------------------------------

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "hyprland";
    compositor.customConfig = ''
      env = XCURSOR_THEME,Bibata-Modern-Classic
      env = XCURSOR_SIZE,24
      env = HYPRCURSOR_THEME,Bibata-Modern-Classic
      env = HYPRCURSOR_SIZE,24
      misc {
        force_default_wallpaper = 0
        disable_hyprland_logo = true
      }
    '';
    configHome = "/home/pego";
  };



  # -----------------------------------------
  # -------------- AUDIO --------------------
  # -----------------------------------------

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  
  
  
  # -----------------------------------------
  # -------------- BLUETOOTH ----------------
  # -----------------------------------------
  
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  # -----------------------------------------
  # --------------- LOCALE ------------------
  # -----------------------------------------

  time.timeZone = "Europe/Rome";
  i18n.defaultLocale = "it_IT.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "it_IT.UTF-8";
    LC_IDENTIFICATION = "it_IT.UTF-8";
    LC_MEASUREMENT = "it_IT.UTF-8";
    LC_MONETARY = "it_IT.UTF-8";
    LC_NAME = "it_IT.UTF-8";
    LC_NUMERIC = "it_IT.UTF-8";
    LC_PAPER = "it_IT.UTF-8";
    LC_TELEPHONE = "it_IT.UTF-8";
    LC_TIME = "it_IT.UTF-8";
  };
}
