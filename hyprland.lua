-- Variables
Terminal = "ghostty"
-- FileManager = "ghostty -e yazi"
FileManager = "nautilus"
Browser = "flatpak run app.zen_browser.zen"

-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	hl.exec_cmd("systemctl --user start gcr-ssh-agent.socket")
	hl.exec_cmd("systemctl --user start gcr-ssh-agent.service")
	-- hl.exec_cmd("gnome-keyring-daemon --start --components=pkcs11,secrets")
	-- hl.exec_cmd("qs -c noctalia-shell")
	hl.exec_cmd("noctalia")
	hl.exec_cmd("valent --gapplication-service")
	hl.exec_cmd("emacs --daemon")
	hl.exec_cmd("flatpak run --command=dev.geopjr.Turntable dev.geopjr.Turntable --headless")
	hl.exec_cmd("flatpak run --command=easyeffects com.github.wwmm.easyeffects --service-mode --hide-window")
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
		rounding = 20,
		-- border_part_of_window = true,
		rounding_power = 2.0,
		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			vibrancy = 0.1696,
		},
		motion_blur = {
			enabled = true,
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
require("animations")
-- For Noctalia Color templates
require("noctalia")
