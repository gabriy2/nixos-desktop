{ config, pkgs, ... }:

{
  # ----------------------------
  # ------- T7 AUTOMOUNT -------
  # ----------------------------
  
  fileSystems."/mnt/t7" = {
    device = "/dev/disk/by-uuid/57198136-d5b4-4697-a258-06dd3401a03e";
    fsType = "ext4";
    options = [
      "nofail"
      "noatime"
      "x-systemd.automount"
      "x-systemd.device-timeout=5"
    ];
  };
}
