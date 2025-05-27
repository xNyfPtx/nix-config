{ config, pkgs, ... }:

{
  imports = [
    ./hyprland
    ./programs
    ./shell
  ];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
}
