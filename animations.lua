hl.curve("overshoot", { type = "bezier", points = { { 0.5, 0.9 }, { 0.1, 1.1 } } })
hl.curve("rubber", { type = "spring", mass = 1, stiffness = 70, dampening = 10 })

hl.animation({ leaf = "workspaces", enabled = true, speed = 8, bezier = "overshoot" })
hl.animation({ leaf = "windows", enabled = true, speed = 10, spring = "rubber", style = "popin" })
hl.animation({ leaf = "fade", enabled = 0 })
