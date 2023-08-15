-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
--
local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Catppuccin Macchiato'
    -- return 'Hardcore'
  else
    return 'Catppuccin Latte'
  end
end


-- For example, changing the color scheme:
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

config.keys = {
  { key = 'Enter', mods = 'CMD', action = wezterm.action.QuickSelect },
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

local unscii = wezterm.font {
    family = 'unscii',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}

local jetbrains = wezterm.font {
    family = 'JetBrains Mono',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}

config.font = jetbrains
config.font_size = 14.0

config.native_macos_fullscreen_mode = false
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config

