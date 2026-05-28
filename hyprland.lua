-- Variables
Terminal = "ghostty"
FileManager = "ghostty -e yazi"
Browser = "flatpak run app.zen_browser.zen"

-- monitor
hl.monitor({
	output = "",
	mode = "prefered",
	position = "auto",
	scale = "auto",
})

hl.monitor({
	output = "eDP-1",
	mode = "prefered",
	position = "auto",
	scale = "1.25",
})
-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	hl.exec_cmd("systemctl --user enable --now gcr-ssh-agent.socket")
	hl.exec_cmd("qs -c noctalia-shell")
	-- hl.exec_cmd('hyprctl plugin load "$HYPR_PLUGIN_DIR/lib/libhyprexpo.so"')
end)

-- General
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		allow_tearing = false,
		resize_on_border = true,
		border_size = 4,
		float_gaps = 4,
	},
	decoration = {
		rounding = 12,
		border_part_of_window = true,
		rounding_power = 2.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0x1a1a1aee,
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			vibrancy = 0.1696,
		},
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		vrr = 1,
		force_default_wallpaper = 0,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		animate_manual_resizes = false,
		animate_mouse_windowdragging = false,
		focus_on_activate = false,
	},
	cursor = {
		hide_on_key_press = true,
		hide_on_touch = true,
	},
})

hl.env("HYPRCURSOR_THEME", "MacOS-Tahoe-Cursor")
hl.env("XCURSOR_THEME", "MacOS-Tahoe-Cursor")
hl.env("HYPRCURSOR_SIZE", 28)
hl.env("XCURSOR_SIZE", 28)

-- imports
require("binds")
require("noctalia.noctalia-colors")
require("windowrules")
require("devices")
