{ ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.defaultGateway = "192.168.1.1";
  networking.nameservers = [ "192.168.1.200" "192.168.1.78" ];
}
