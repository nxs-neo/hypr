local primary = 0xffb8bb26
local surface = 0xff282828
local secondary = 0xfffabd2f
local error = 0xfffb4934
local tertiary = 0xff83a598
local surface_lowest = 0xff2c2b2a

hl.config({
	general = {
		col = {
			active_border = primary,
			inactive_border = surface,
		},
	},
	group = {
		col = {
			border_active = secondary,
			border_inactive = surface,
			border_locked_active = error,
			border_locked_inactive = surface,
		},

		groupbar = {
			col = {
				active = secondary,
				inactive = surface,
				locked_active = error,
				locked_inactive = surface,
			},
		},
	},
})
