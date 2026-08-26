{ pkgs, ... }:

{
  # ---------------------------
  # ------- SYSTEM PKGS -------
  # ---------------------------

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    flatpak
    fastfetch
    ghostty
    fish
    starship
    superfile
    hyprshot
    nautilus
    vscodium
    bibata-cursors
  ];



  # ----------------------
  # ------- steam --------
  # ----------------------
  
  programs.steam.enable = true;

  # ----------------------  
  # ------- docker -------
  # ----------------------

  virtualisation.docker = {
    enable = true;
    daemon.settings = {
      dns = [ "1.1.1.1" "1.0.0.1" ];
    };
  };

  fonts.packages = with pkgs; [
    nerd-fonts.cousine
  ];
}
