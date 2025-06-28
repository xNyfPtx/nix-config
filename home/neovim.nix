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
      cc
      cl
      clang
      emmet-language-server
      fd
      gcc
      gnumake
      imagemagick
      neovim-node-client
      prettierd
      stylua
      tailwindcss-language-server
      ueberzugpp
      vimPlugins.nvim-treesitter-parsers.html
      vimPlugins.nvim-treesitter-parsers.css
      vimPlugins.nvim-treesitter-parsers.typescript
      vimPlugins.nvim-treesitter-parsers.javascript
      zig
    ];
  };
}
