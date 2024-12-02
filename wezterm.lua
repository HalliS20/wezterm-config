-- File: ~/.config/wezterm/wezterm.lua
local wezterm = require('wezterm')

-- Import other configuration files
local keybinds = require('config.keybinds')
local appearance = require('config.appearance')

-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Merge configurations from other files
for k, v in pairs(keybinds) do
	config[k] = v
end

for k, v in pairs(appearance) do
	config[k] = v
end

-- Any additional local configs can go here
config.scrollback_lines = 10000

return config

