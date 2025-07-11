{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./bash.nix
    ./common.nix
    ../dotfiles
    ./git.nix
    ./gnome.nix
    ./librewolf.nix
    ./neovim.nix
    ./thefuck.nix
  ];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
}
