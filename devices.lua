hl.config({
	input = {
		kb_layout = "us",
		accel_profile = "flat",
		-- force_no_accel = true,
		follow_mouse = 1,
		focus_on_close = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification,

		touchpad = {
			disable_while_typing = true,
			natural_scroll = true,
		},
	},
	render = {
		direct_scanout = 1,
	},
	cursor = {
		min_refresh_rate = 60,
		enable_hyprcursor = true,
		use_cpu_buffer = 2,
		no_warps = true,
	},
	xwayland = {
		force_zero_scaling = true,
	},
})

hl.device({
	name = "synaptics-tm3276-022",
	sensitivity = 0.15,
	tap_to_click = true,
	accel_profile = "adaptive",
	drag_lock = true,
})
hl.device({
	name = "logitech-g102-lightsync-gaming-mouse-keyboard-1",
	sensitivity = 0,
	accel_profile = "flat",
})
