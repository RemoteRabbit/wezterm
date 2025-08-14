local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = { "/bin/zsh", "-l" }

config.background = {
	{
		-- source = { File = wezterm.config_dir .. "/backdrops/saturn-devouring-sons.jpeg" },
		source = { File = wezterm.config_dir .. "/backdrops/planets.jpg" },
		opacity = 1,
		horizontal_align = "Center",
		vertical_align = "Middle",
		hsb = {
			hue = 1.0,
			saturation = 1.5,
			brightness = 0.1,
		},
	},
}

config.font = wezterm.font_with_fallback({
	"FiraCode Nerd Font",
	"Noto Color Emoji",
	"Noto Sans Symbols",
	"Noto Sans Symbols 2",
})

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
