-- ── WezTerm – matching Ghostty setup ──────────────────────────────
-- Theme: Catppuccin Mocha

local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- General
config.term = "xterm-256color"
config.scrollback_lines = 10000

-- Window
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}
config.window_decorations = "TITLE | RESIZE"
config.native_macos_fullscreen_mode = true

-- Font
config.font = wezterm.font("MesloLGS NF")
config.font_size = 12.5
config.line_height = 1.1

-- Theme (Catppuccin Mocha)
config.color_scheme = "Catppuccin Mocha"

-- macOS Option as Alt
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

-- Clipboard
config.selection_word_boundary = " \t\n{}[]()\"'`,;:@"

-- Keyboard: Shift+Enter and Alt+Enter send \x0a
config.keys = {
  { key = "Enter", mods = "SHIFT", action = wezterm.action.SendString("\x0a") },
  { key = "Enter", mods = "ALT", action = wezterm.action.SendString("\x0a") },
}

-- Tab bar style
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false

return config
