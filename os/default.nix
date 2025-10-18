{ config, pkgs, ... }:

{
  imports = 
    [
      ./core/audio.nix
      ./core/boot.nix
      ./core/maintenance.nix
      ./core/networking.nix
      ./core/settings.nix
      ./core/shell.nix
      ./core/time.nix
      ./core/users.nix
      ./desktop/sddm.nix
      ./programs/nh.nix
    ];
}
