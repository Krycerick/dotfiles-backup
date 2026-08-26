hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 6,
        border_size = 2,
        resize_on_border = true,
        layout = "dwindle",
        allow_tearing = true, -- required for per-window "tearing" rule to work (huge for CS2 input latency)
       col = {
            -- animated gradient border using Cachy palette
            active_border = { colors = { CACHYLBLUE, CACHYLGREEN }, angle = 45 }, -- FIXED
            inactive_border = CACHYDBLUE,
        },
    },
    
    decoration = {
        rounding = 20,
        rounding_power = 2.5, -- squircle-ish corners, a bit softer than plain rounded
        active_opacity = 0.95,
        inactive_opacity = 0.85, -- wider contrast between active/inactive for depth
        fullscreen_opacity = 1,
        dim_special = 0.3,
        dim_inactive = true,
        dim_strength = 0.2,
        shadow = {
            enabled = true,
            range = 18,          -- softer, wider glow instead of a tight drop shadow
            render_power = 3,
            color = "0x1afa3296",       -- dark reddish-purple glow, alpha lowered so it's subtler
            color_inactive = "0x4028dcc8", -- teal glow (more blue mixed into the green), alpha lowered again
        },
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            xray = false,
            special = true,
            vibrancy = 0.25,
            vibrancy_darkness = 0.5,
            contrast = 1.05,
            brightness = 1.05,
            noise = 0.02,        -- kills banding on the frosted glass look
            popups = true,
        },
    },
})