{
  config,
  pkgs,
  ...
}: {
  programs.neovim = {
    enable = true;
    extraLuaPackages = ps: [ps.magick];
    extraPackages = with pkgs; [
      alejandra
      codespell
      fd
      gnumake
      imagemagick
      prettierd
      stylua
      ueberzugpp
    ];
  };
}
