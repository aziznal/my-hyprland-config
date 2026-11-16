-- https://wiki.hyprland.org/Configuring/Monitors/
-- note: brightness 1.19 is the highest I could go to before starting to lose contrast
hl.monitor({
    output = "",
    mode = "highrr",
    position = "auto",
    scale = 1.875,
    bitdepth = 10,
    sdrbrightness = 1.16,
    sdrsaturation = 1,
})

-- alternative syntax but couldn't make it work (https://wiki.hypr.land/Configuring/Monitors/#monitor-v2)
-- hl.monitor({
--     output = "",
--     mode = "highrr",
--     position = "auto",
--     scale = 1.875,
--     bitdepth = 10,
--     sdrbrightness = 1.36,
--     sdrsaturation = 0.98,
--     cm = "hdr",
-- })

-- unscale XWayland
hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

-- toolkit-specific scale
hl.env("GDK_SCALE", "2")
hl.env("XCURSOR_SIZE", "32")
