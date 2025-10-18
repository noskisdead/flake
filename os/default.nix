{ config, pkgs, ... }:

{
  imports = 
    [
      ./core/audio.nix
      ./core/boot.nix
      ./core/maintenance.nix
      ./core/networking.nix
      ./core/settings.nix
      ./core/time.nix
      ./core/users.nix
    ];
}
