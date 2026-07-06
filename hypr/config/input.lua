-- Input configuration

hl.config({
    cursor = {
    no_hardware_cursors = true,
  },

    
    input = {
        accel_profile = "flat",
        force_no_accel = true,
        sensitivity = 0,
    },
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down",       action = "close" })
hl.gesture({ fingers = 3, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "left",       action = "float" })