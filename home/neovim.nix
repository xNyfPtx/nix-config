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
      emmet-language-server
      fd
      gnumake
      imagemagick
      prettierd
      stylua
      ueberzugpp
    ];
  };
}
