{ config, pkgs, ... }

{
  programs.fish = {
    enable = true;
  };
  
  programs.starship = {
    enable = true;
    presets = [ "nerd-font-symbols" ];
    interactiveOnly = true;
    transientPrompt.enable = true;
  }
  
  documentation.man.generateCaches = false; # Fixes long build times
}
