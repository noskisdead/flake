{ config, pkgs, ... }

{
  programs.nh = {
    enable = true;
    flake = "/home/kenny/.nix";
  }
}
