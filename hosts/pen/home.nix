{ config, pkgs, ... }:

{
  home.username = "kenny";
  home.homeDirectory = "/home/kenny";
  home.stateVersion = "25.05"; # do not change
  
  imports = [
    ./../../hm/default.nix # Import all your Home Manager modules
  ];
  
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Allow unfree software
  nixpkgs.config.allowUnfree = true;
}
