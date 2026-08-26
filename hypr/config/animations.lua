hl.config({ animations = { enabled = true } })

-- Curves
hl.curve("md3_standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })
hl.curve("md3_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.02 } } })

hl.curve("spring_snappy", { type = "spring", mass = 1, stiffness = 80, dampening = 16 })
hl.curve("weighted_decel", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1 } } })
hl.curve("snap_curve", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })

hl.curve("winIn", { type = "bezier", points = { { 0.1, 1.0 }, { 0.1, 1.0 } } })
hl.curve("winOut", { type = "bezier", points = { { 0.1, 1.0 }, { 0.1, 1.0 } } })

-- Window animations
hl.animation({ leaf = "windows", enabled = true, speed = 4, spring = "spring_snappy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "md3_decel", style = "popin 70%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, bezier = "md3_accel", style = "popin 70%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "overshot" })

-- Fade animations
hl.animation({ leaf = "fade", enabled = true, speed = 2.5, bezier = "md3_standard" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.0, bezier = "md3_decel" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.0, bezier = "md3_accel" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 3.0, bezier = "md3_decel" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2.0, bezier = "md3_accel" })

-- Layers
hl.animation({ leaf = "layers", enabled = true, speed = 6.5, bezier = "md3_standard", style = "fade" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6.5, bezier = "winIn", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 8.0, bezier = "winOut", style = "slide" })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.0, bezier = "md3_decel", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 7.0, bezier = "winIn", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 7.0, bezier = "winOut", style = "slide" })

-- Special workspace
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4.0, bezier = "md3_decel", style = "slide" })