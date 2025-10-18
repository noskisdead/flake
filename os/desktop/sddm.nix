{ config, pkgs, ... }:

let
  custom-sddm-astronaut = pkgs.sddm-astronaut.override {
    embeddedTheme = "jake_the_dog";
  };
in
{
  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    settings = {
      Theme = {
      CursorTheme = "Bibata-Modern-Ice";
      };
    };
    extraPackages = with pkgs; [
      custom-sddm-astronaut
    ];

    theme = "sddm-astronaut-theme";
    settings = {
      Theme = {
        Current = "sddm-astronaut-theme";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    custom-sddm-astronaut
    bibata-cursors
    kdePackages.qtmultimedia
  ];
}
