{ pkgs-unstable, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs-unstable.linuxKernel.packages.linux_6_18;
  boot.loader.systemd-boot.consoleMode = "max"; # risoluzione systemd boot
  console.keyMap = "us-acentos";
}