{ config, ... }:

{
  # Bootloader configuration
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.luks.devices."luks-0c2c8675-368e-4550-8946-3695a6e2fae0".device = "/dev/disk/by-uuid/0c2c8675-368e-4550-8946-3695a6e2fae0";
}
