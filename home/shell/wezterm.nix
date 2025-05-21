{ config, pkgs, ... }:
{
  xdg.configFile."wezterm/wezterm.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/wezterm/wezterm.lua";
}
