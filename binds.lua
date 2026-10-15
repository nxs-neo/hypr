-- local ipc = "qs -c noctalia-shell ipc call "
local ipc = "noctalia msg "

hl.bind("SUPER + R", hl.dsp.exec_cmd(Terminal))
hl.bind("SUPER + B", hl.dsp.exec_cmd(Browser))
hl.bind("SUPER + E", hl.dsp.exec_cmd(FileManager))
hl.bind("SUPER + M", hl.dsp.exec_cmd("emacsclient -c -a 'emacs'"))
hl.bind("SUPER + Q", hl.dsp.window.close())

hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind("SUPER + V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind("SUPER + N", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center notifications"))
hl.bind("SUPER + TAB", hl.dsp.exec_cmd(ipc .. "plugin:workspace-overview toggle"))
hl.bind("ALT + TAB", hl.dsp.exec_cmd(ipc .. "window-switcher"))
hl.bind("SUPER + COMMA", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd(ipc .. "session lock"))
hl.bind("SUPER + escape", hl.dsp.exec_cmd(ipc .. "panel-toggle session"))
hl.bind("Print", hl.dsp.exec_cmd(ipc .. "screenshot-region"))

-- Resize and Move windows with Mouse
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true }) -- ALT + LMB: Move a window
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true }) -- ALT + RMB: Resize a window

-- Function Keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up 10"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down 10"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "mic-mute"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. "media play"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. "media pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. "media prev"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. "media next"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"))

-- Laptop Lid
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd(ipc .. "session lock"))

-- Touchpad Gestures
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({
	fingers = 3,
	direction = "up",
	action = function()
		hl.exec_cmd(ipc .. "plugin:workspace-overview toggle")
	end,
})

--Switch Workspace
for i = 1, 9, 1 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = "" .. i }))
end
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "10" }))

--Move Windows to Workspace
for i = 1, 9, 1 do
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = "" .. i }))
end
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))

-- Move Focus
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))

-- Move Windows in Workspace
hl.bind("SUPER + SHIFT+ H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT+ L", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT+ K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT+ J", hl.dsp.window.move({ direction = "d" }))

-- Move Focus in Monitors
