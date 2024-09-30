-- wezterm API
local wezterm = require("wezterm")
-- holds config
local config = wezterm.config_builder()
local act = wezterm.action

-- config.default_cursor_style = "BlinkingBar"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 600

-- command prompt
-- config.scrollback_lines = 10000
-- config.scroll_to_bottom_on_input = false

-- theme
-- config.color_scheme = "MaterialDarker"
-- config.color_scheme = "Banana Blueberry"
-- config.color_scheme = "Catppuccin Frappe"
config.color_scheme = "tokyonight"
-- config.color_scheme = "tokyonight_storm"
-- config.color_scheme = "tokyonight_moon"
-- config.color_scheme = "Palenight (Gogh)"
-- config.color_scheme = "rose-pine"
-- config.color_scheme = "kanagawa (Gogh)"
-- config.color_scheme = "Everblush"

config.colors = {
	foreground = "#CBE0F0",
	-- background = "#303446",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#303446",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}
-- config.colors = {
-- 	-- background = "#303446",
-- 	-- background = "#24273a",
-- }

-- window
config.use_fancy_tab_bar = false
config.initial_rows = 48
config.initial_cols = 144
config.window_background_opacity = 0.7
config.macos_window_background_blur = 0

-- fonts
config.font = wezterm.font_with_fallback({
	{
		family = "CaskaydiaCove Nerd Font",
	},
	{
		family = "Hack Nerd Font",
	},
})

config.font_size = 16

config.send_composed_key_when_right_alt_is_pressed = false
-- config.harfbuzz_features = {
-- 	"calt=1",
-- 	"clig=1",
-- 	"liga=1",
-- }

-- dim inactive panes
config.inactive_pane_hsb = {
	saturation = 0.25,
	brightness = 0.25,
}

wezterm.on("gui-startup", function(cmd)
	local _, first_pane, window = wezterm.mux.spawn_window(cmd or {
		cwd = wezterm.home_dir .. "/code",
	})

	-- local _, second_pane, _ = window:spawn_tab({
	-- 	cwd = wezterm.home_dir .. "/code",
	-- })
	--
	-- second_pane:split({
	-- 	direction = "Left",
	-- 	cwd = wezterm.home_dir .. "/code",
	-- })
	--
	-- local _, third_pane, _ = window:spawn_tab({
	-- 	cwd = wezterm.home_dir .. "/code",
	-- })
	--
	-- third_pane:send_text("nvim\n")
	first_pane:send_text("nvim\n")
	-- window:perform_action(wezterm.action.ActivateTab(0), first_pane)
	-- local terms = window:spawn_tab({ cmd or {

	-- local tab, pane, window = wezterm.mux.spawn_window(cmd or {
	-- 	cwd = wezterm.home_dir .. "/code",
	-- })

	-- 	cwd = wezterm.home_dir .. "/code",
	-- } })
	--
	-- terms:split({
	-- 	direction = "Right",
	-- 	cwd = wezterm.home_dir .. "/code",
	-- })
	--
	-- window:spawn_tab({ cmd or {
	-- 	cwd = wezterm.home_dir .. "/code",
	-- } })

	-- pane:split({
	--     direction = "Top",
	--     size = 0.85,
	--     cwd = wezterm.home_dir .. "/code"
	-- })
	--
	-- bottom_pane:split({
	-- 	direction = "Right",
	-- 	size = 0.5,
	-- 	cwd = "~/code",
	-- })
	--
	-- pane:activate()
end)

-- return to wezterm
return config
