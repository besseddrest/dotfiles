-- wezterm API
local wezterm = require("wezterm")

-- holds config
local config = wezterm.config_builder()
local act = wezterm.action

-- creates blinking cursor (combined w neovim option)
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 600

-- theme
-- config.color_scheme = "tokyonight"

-- other themes I like
-- local alt_themes = {
-- 	"MaterialDarker",
-- 	"Banana Blueberry",
-- 	"Catppuccin Frappe",
-- 	"tokyonight_storm",
-- 	"tokyonight_moon",
-- 	"Palenight (Gogh)",
-- 	"rose-pine",
-- 	"kanagawa (Gogh)",
-- 	"Everblush",
-- }

config.colors = {
	foreground = "#CBE0F0",
	-- background = "#2E3440",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#303446",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- overrides wezterm theme bg color
-- config.colors = {
-- 	-- background = "#303446",
-- 	background = "#24273a",
-- }

-- window
config.default_cwd = wezterm.home_dir .. "/code"
config.use_fancy_tab_bar = false
config.display_pixel_geometry = "BGR"
config.hide_tab_bar_if_only_one_tab = true
config.initial_rows = 48
config.initial_cols = 144
config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 30
config.window_decorations = "RESIZE"

-- fonts
config.font = wezterm.font_with_fallback({
	{
		family = "JetBrainsMono Nerd Font",
	},
	{
		family = "CaskaydiaCove Nerd Font",
	},
	{
		family = "Hack Nerd Font",
	},
})

config.font_size = 16

config.send_composed_key_when_right_alt_is_pressed = false

-- dim inactive panes
config.inactive_pane_hsb = {
	saturation = 0.25,
	brightness = 0.25,
}

-- wezterm.on("gui-startup", function(cmd)
-- 	local _, first_pane, window = wezterm.mux.spawn_window(cmd or {
-- 		cwd = wezterm.home_dir .. "/code",
-- 	})
--
-- 	first_pane:send_text("nvim\n")
-- end)

-- return to wezterm
return config
