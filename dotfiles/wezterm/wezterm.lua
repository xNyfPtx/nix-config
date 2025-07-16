local wezterm = require("wezterm")
local config = wezterm.config_builder()

local catppuccin = {
	base = "hsl(240, 21%, 15%)",
	surface0 = "hsl(237, 16%, 23%)",
	surface1 = "hsl(234, 13%, 31%)",
	text = "hsl(226, 64%, 88%)",
}

config.color_scheme = "catppuccin-mocha"
config.colors = {
	cursor_bg = "#999999",
	tab_bar = {
		background = catppuccin.base,

		active_tab = {
			bg_color = catppuccin.surface1,
			fg_color = catppuccin.text,
		},

		inactive_tab = {
			bg_color = catppuccin.base,
			fg_color = catppuccin.text,
		},

		inactive_tab_hover = {
			bg_color = catppuccin.surface0,
			fg_color = catppuccin.text,
		},

		new_tab = {
			bg_color = catppuccin.base,
			fg_color = catppuccin.text,
		},

		new_tab_hover = {
			bg_color = catppuccin.surface0,
			fg_color = catppuccin.text,
		},
	},
}
config.enable_tab_bar = true
config.keys = {
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
}
config.tab_max_width = 50
config.use_fancy_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.warn_about_missing_glyphs = false

wezterm.on("mux-is-process-stateful", function(_proc)
	return false
end)

return config
