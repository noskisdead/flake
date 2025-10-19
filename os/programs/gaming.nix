{ config, pkgs, ... }:

{
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
    protontricks.enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  environment.systemPackages = with pkgs; [
    prismlauncher # MC launcher
    heroic        # Epic and GOG game launcher
  ];

  programs.appimage.enable = true; # For AppImage support (e.g., Slippi)
}
