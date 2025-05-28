{ config, pkgs, ... }:
{
  imports = [
    ./bash.nix
    ./common.nix
    ../dotfiles
    ./git.nix
    ./gnome.nix
    ./librewolf
  ];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
}
