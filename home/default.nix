{ config, pkgs, ... }:

{
  imports = [
    ./programs
    ./shell
  ];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    stateVersion = "25.05";
  };

  dconf.settings = {
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Control><Alt>t";
      command = "wezterm";
      name = "WezTerm";
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
      ];
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-temperature = "uint32 2700";
    };
  };

  programs.home-manager.enable = true;
}
