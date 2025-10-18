{ config, ... }:

{
  # Updating
  system.autoUpgrade = {
    enable = true;
    dates = "daily";
    flake = "github:noskisdead/flake";
    flags = [
      "--update-input"
      "nixpkgs"
    ];
  };
  
  # Garbage Collection
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 5d";
  };

  # Nix Store Optimise
  nix.optimise = {
    automatic = true;
  };
}
