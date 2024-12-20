-- File: ~/.config/wezterm/config/keybinds.lua
local wezterm = require('wezterm')

local M = {}

M.keys = {
	-- Create a new tab
	{ key = 't',          mods = 'CMD',        action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
	-- Split horizontally
	{ key = '-',          mods = 'CMD',        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
	-- Split vertically
	{ key = '\\',         mods = 'CMD',        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
	-- Switch tabs with CMD+SHIFT+H/L or left and right arrow
	{ key = 'h',          mods = 'CMD|SHIFT',  action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "LeftArrow",  mods = "CMD|SHIFT",  action = wezterm.action.ActivateTabRelative(-1) },
	{ key = 'l',          mods = 'CMD|SHIFT',  action = wezterm.action.ActivateTabRelative(1) },
	{ key = 'RightArrow', mods = 'CMD|SHIFT',  action = wezterm.action.ActivateTabRelative(1) },
	-- disableing for nvim move lines
	{ key = 'j',          mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
	{ key = 'k',          mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
	{ key = 'h',          mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
	{ key = 'l',          mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
	{ key = 'UpArrow',    mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
	{ key = 'DownArrow',  mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
	{ key = 'LeftArrow',  mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
	{ key = 'RightArrow', mods = 'CTRL|SHIFT', action = 'DisableDefaultAssignment' },
}

return M
