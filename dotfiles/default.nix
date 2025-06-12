{ config, pkgs, ... }:
{
  xdg.configFile."Proton/VPN/app-config.json".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/Proton/VPN/app-config.json";
  xdg.configFile."Proton/VPN/settings.json".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/Proton/VPN/settings.json";
  xdg.configFile."wezterm/wezterm.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/wezterm/wezterm.lua";
}
