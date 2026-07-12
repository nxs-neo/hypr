hl.window_rule({
	name = "Nautilus",
	match = {
		class = "^(org.gnome.Nautilus)$",
	},
	float = true,
})

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "noctalia-background-.*$",
	},
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

hl.window_rule({
	name = "xwayland-video-bridge-fixes",
	match = {
		class = "xwaylandvideobridge",
	},
	no_initial_focus = true,
	no_focus = true,
	no_anim = true,
	no_blur = true,
	max_size = { 1, 1 },
	opacity = 0.0,
})
hl.layer_rule({
	match = { namespace = "quickshell:bar" },
	blur = true,
	ignore_alpha = 0.2,
	blur_popups = true,
})
hl.layer_rule({
	match = { namespace = "quickshell:dock" },
	blur = true,
	ignore_alpha = 0.2,
	blur_popups = true,
})
