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
