local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = {'/bin/zsh', '-l'}

config.background = {
	{
		-- source = { File = wezterm.config_dir .. "/backdrops/saturn-devouring-sons.jpeg" },
		source = { File = wezterm.config_dir .. "/backdrops/planets.jpg" },
    opacity = 0.9,
	},
	-- {
	-- 	-- source = { Color = colors.background },
	-- 	height = "100%",
	-- 	width = "100%",
	-- 	opacity = 0.90,
	-- },
}

-- config.font = wezterm.font("JetBrains Mono")
-- config.font = wezterm.font("Fira Code")
config.font = wezterm.font_with_fallback {
  "FiraCode Nerd Font",
  "JetBrainsMono Nerd Font",
  "JetBrains Mono",
}
config.color_scheme = "Catppuccin Mocha"

config.enable_tab_bar = false

config.window_background_opacity = 0.5

config.keys = {
	{
		key = "r",
		mods = "CMD|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
}

return config
