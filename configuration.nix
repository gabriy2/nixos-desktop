{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/nvidia.nix
    ./modules/desktop.nix
    ./modules/packages.nix
    ./modules/disk.nix
    ./modules/networking.nix
    ./modules/users.nix
    ./modules/services.nix
  ];
  
  nixpkgs.config.allowUnfree = true;

  boot.loader.systemd-boot.configurationLimit = 5;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "26.05";
}
