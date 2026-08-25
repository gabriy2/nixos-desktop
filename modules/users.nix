{ pkgs, ... }:

{
  users.users."pego" = {
    isNormalUser = true;
    description = "Gabriele Pegoraro";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    initialPassword = "cambiami"; 
  };
}
