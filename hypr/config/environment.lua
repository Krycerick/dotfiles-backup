-- Environmental variables
-- if you don't use UWSM, define your variables here (e.g. hl.env("QT_QPA_PLATFORM", "wayland"))
hl.env("OZONE_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("DESKTOP_SESSION", "Hyprland")

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Qt related environment variables
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

-- GDK
hl.env("GDK_SCALE", "1")

-- Toolkit Backend
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("CLUTTER_BACKEND", "wayland")

-- Mozilla
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Cursor
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- SDL: removed global wayland force -- breaks native mouse input/fullscreen
-- exclusive handling in SDL2 games (CS2 included). Set per-launch-option
-- instead if you want it for a specific non-game app:
--   SDL_VIDEODRIVER=x11 %command%

-- Quickshell / Noctalia v5 (QtQuick) — threaded render loop keeps panel/OSD
-- input handling off the main render thread, lower input latency for the shell itself
hl.env("QSG_RENDER_LOOP", "threaded")
hl.env("QS_NO_RELOAD_POPUP", "1")

-- AMD RADV / mesa perf (RX 7900 XTX)
hl.env("RADV_PERFTEST", "gpl,nggc") -- gpl = async shader compilation, nggc = next-gen geometry culling; both reduce stutter/frametime spikes
hl.env("mesa_glthread", "true")