{ config, pkgs, ... }:
{
  # ----------------------------
  # ------- HOME-MANAGER -------
  # ----------------------------
  programs.home-manager.enable = true;



  # --------------------
  # ------- USER -------
  # --------------------

  home.username = "pego";
  home.homeDirectory = "/home/pego";
  home.stateVersion = "26.05";
  
  
  
  # ------------------------
  # ------- HYPRLAND -------
  # ------------------------
  home.sessionVariables.NIXOS_OZONE_WL = "1";
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
   size = 24;
  };

  
  # -------------------------
  # ------- DOT FILES -------
  # -------------------------
  home.file.".config/hypr/hyprland.lua".source = ./home/hypr/hyprland.lua;
  home.file.".config/starship.toml".source = ./home/starship/starship.toml;
  home.file.".config/ghostty/config.ghostty".source = ./home/ghostty/config.ghostty;
  home.file.".config/fish/config.fish".source = ./home/fish/config.fish;
  home.file.".config/superfile/config.toml".source = ./home/superfile/config.toml;
  home.file.".vimrc".source = ./home/vim/.vimrc;
  home.file."Immagini/wallpapers".source = ./home/wallpapers;


  # -------------------
  # ------- GIT -------
  # -------------------

  programs.git = {
    enable = true;

    settings = {
      user.name = "pego";
      user.email = "120041541+gabriy2@users.noreply.github.com";
      init.defaultBranch = "main";
      advice.defaultBranchName = false;
    };
  };
}
