-- File: ~/.config/wezterm/config/keybinds.lua
local wezterm = require('wezterm')

local M = {}

M.keys = {
	-- Create a new tab
	{
		key = 't',
		mods = 'CMD',
		action = wezterm.action.SpawnTab 'CurrentPaneDomain',
	},
	-- Split horizontally
	{
		key = '-',
		mods = 'CMD',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
	},
	-- Split vertically
	{
		key = '\\',
		mods = 'CMD',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	-- Switch tabs with CMD+SHIFT+H/L
	{
		key = 'h',
		mods = 'CMD|SHIFT',
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = 'l',
		mods = 'CMD|SHIFT',
		action = wezterm.action.ActivateTabRelative(1),
	},
}

return M
