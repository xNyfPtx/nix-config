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
      neovim-node-client
      prettierd
      stylua
      tailwindcss-language-server
      ueberzugpp
      zig
    ];
  };
}
