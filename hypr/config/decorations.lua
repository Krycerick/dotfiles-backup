-- Look and feel configuration

hl.config({
      animations = { enabled = true },
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = false,
        col = {
            active_border = {
                colors = { CACHYLGREEN, CACHYLBLUE, CACHYDGREEN },
                angle = 45,
            },
            inactive_border = CACHYGRAY,
        },
    },
    group = {
        col = {
            border_active = CACHYLBLUE,
            border_inactive = CACHYGRAY,
            border_locked_active = CACHYDBLUE,
            border_locked_inactive = CACHYGRAY,
        },
        groupbar = {
            col = {
                active = CACHYLGREEN,
                inactive = CACHYGRAY,
                locked_active = CACHYDBLUE,
                locked_inactive = CACHYGRAY,
            },
        },
    },
    decoration = {
        rounding = 20,
    active_opacity = 0.96,
    inactive_opacity = 0.82,
        blur = {
                  enabled = true,
            size = 6,
            passes = 2,
            special = true,
            xray = true,
                  new_optimizations = true,
                        ignore_opacity = true,
            vibrancy = 0.3,
                  vibrancy_darkness = 0.25,
            contrast = 1.05,
            brightness = 1.0,
                  popups = true,
            noise = 0.02,
        },
        shadow = {
            enabled = true,
            range = 25,
            render_power = 3,
            color = "rgba(00000088)",
            color_inactive = "rgba(00000044)",
        },
    },
})