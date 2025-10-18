{ config, pkgs, ... }:

{
  imports = 
    [
      ./core/audio.nix
      ./core/boot.nix
      ./core/networking.nix
      ./core/settings.nix
      ./core/time.nix
      ./core/updates.nix
      ./core/users.nix
    ];
}
