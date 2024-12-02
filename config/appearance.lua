-- File: ~/.config/wezterm/config/appearance.lua
local wezterm = require('wezterm')

local M = {}

-- Basic appearance settings

M.color_scheme = 'Moonfly (Gogh)'

M.font = wezterm.font('JetBrains Mono')
M.font_size = 14.0
M.window_background_opacity = 0.95

-- Tab bar appearance
M.use_fancy_tab_bar = false
M.tab_bar_at_bottom = false
M.show_new_tab_button_in_tab_bar = false
M.tab_max_width = 32

-- Colors
M.colors = {
	tab_bar = {
		background = '#1b1b1b',
		active_tab = {
			bg_color = '#282828',
			fg_color = '#eeeeee',
		},
		inactive_tab = {
			bg_color = '#1b1b1b',
			fg_color = '#808080',
		},
		inactive_tab_hover = {
			bg_color = '#282828',
			fg_color = '#c0c0c0',
		},
		new_tab = {
			bg_color = '#1b1b1b',
			fg_color = '#808080',
		},
	},
}

-- Window padding
M.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}

return M
