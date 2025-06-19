{ config, pkgs, ... }:
let dotfile = file: {
  xdg.configFile."${file}".source = config.lib.file.mkOutOfStorySymlink "${file}";
};
in
{
  (dotfile "test/test.txt")
  xdg.configFile."nvim/lua/config/init.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/config/init.lua";
  xdg.configFile."nvim/lua/config/lazy.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/config/lazy.lua";
  xdg.configFile."nvim/lua/config/remaps.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/config/remaps.lua";
  xdg.configFile."nvim/lua/config/settings.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/config/settings.lua";

  xdg.configFile."nvim/lua/plugins/autopairs.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/autopairs.lua";
  xdg.configFile."nvim/lua/plugins/barbar.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/barbar.lua";
  xdg.configFile."nvim/lua/plugins/bufferline.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/bufferline.lua";
  xdg.configFile."nvim/lua/plugins/catppuccin.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/catppuccin.lua";
  xdg.configFile."nvim/lua/plugins/conform.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/conform.lua";
  xdg.configFile."nvim/lua/plugins/indent-blankline.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/indent-blankline.lua";
  xdg.configFile."nvim/lua/plugins/lazy-lsp.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/lazy-lsp.lua";
  xdg.configFile."nvim/lua/plugins/lualine.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/lualine.lua";
  xdg.configFile."nvim/lua/plugins/nvim-emmet.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/nvim-emmet.lua";
  xdg.configFile."nvim/lua/plugins/nvim-tree.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/nvim-tree.lua";
  xdg.configFile."nvim/lua/plugins/telescope.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/telescope.lua";
  xdg.configFile."nvim/lua/plugins/toggleterm.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/toggleterm.lua";
  xdg.configFile."nvim/lua/plugins/which-key.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lua/plugins/which-key.lua";

  xdg.configFile."nvim/.prettierrc".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/.prettierrc";
  xdg.configFile."nvim/init.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/init.lua";
  xdg.configFile."nvim/lazy-lock.json".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/lazy-lock.json";
  xdg.configFile."nvim/push.sh".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/nvim/push.sh";


  xdg.configFile."wezterm/wezterm.lua".source = config.lib.file.mkOutOfStoreSymlink "/home/user/nix-config/dotfiles/wezterm/wezterm.lua";
}
