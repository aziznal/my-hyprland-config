local g = require("globals")

hl.on("hyprland.start", function()
    hl.exec_cmd("smile --start-hidden")
end)

hl.bind(g.mainMod .. " + period", hl.dsp.exec_cmd("smile"))

-- https://wiki.hypr.land/Configuring/Window-Rules/
hl.window_rule({
    match = { class = ".*smile" },
    float = true,
    pin = true,
    center = true,
    border_color = "rgb(FF0000)",
})
