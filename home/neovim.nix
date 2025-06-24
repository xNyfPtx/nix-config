{ config, pkgs, ... }:
{
  programs.neovim = {
      enable = true;
      extraLuaPackages = ps: [ ps.magick ];
      extraPackages = [ pkgs.imagemagick ];
  };
}
