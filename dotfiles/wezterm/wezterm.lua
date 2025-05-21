-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()


config.color_scheme = "catppuccin-mocha"
config.window_decorations = "NONE"
config.window_close_confirmation = 'NeverPrompt'
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.show_tab_index_in_tab_bar = true
config.tab_max_width = 50

config.skip_close_confirmation_for_processes_named = {
  'bash',
  'sh',
  'zsh',
  'fish',
  'tmux',
  'nu',
  'cmd.exe',
  'pwsh.exe',
  'powershell.exe',
  'nvim',
  'ollama'
}

local catpuccin_colors =  {
  text = "#cdd6f4",
  subtext1 = "#bac2de",
  subtext0 = "#a6adc8",
  overlay2 = "#9399b2",
  overlay1 = "#7f849c",
  overlay0 = "#6c7086",
  surface2 = "#585b70",
  surface1 = "#45475a",
  surface0 = "#313244",
  base = "#1e1d2d",
  mantle = "#181825",
  crust  = '#11111b'
}

config.colors = {
  tab_bar = {
    background = catpuccin_colors.base,

    active_tab = {
      bg_color = catpuccin_colors.surface1,
      fg_color = catpuccin_colors.text,
      intensity = 'Bold',
      underline = 'None',
      italic = true,
      strikethrough = false,
    },

    inactive_tab = {
      bg_color = catpuccin_colors.base,
      fg_color = catpuccin_colors.text,
      intensity = 'Normal',
      underline = 'None',
      italic = false,
      strikethrough = false,
    },

    inactive_tab_hover = {
      bg_color = catpuccin_colors.surface0,
      fg_color =  catpuccin_colors.text,
       intensity = 'Normal',
        underline = "None",
      italic = false,
      strikethrough = false,
    },

    new_tab = {
      bg_color = catpuccin_colors.base,
      fg_color = catpuccin_colors.text,
    },

    new_tab_hover = {
      bg_color =  catpuccin_colors.surface0,
      fg_color = catpuccin_colors.text,
      italic = true,
    },
  },
}

-- and finally, return the configuration to wezterm
return config
