local g = require("globals")

-- terminating potentailly already existing servers and starting copyq server.
hl.on("hyprland.start", function()
    hl.exec_cmd("copyq exit || true && copyq --start-server")
end)

hl.bind(g.mainMod .. " + v", hl.dsp.exec_cmd("copyq toggle"))

-- https://wiki.hypr.land/Configuring/Window-Rules/
hl.window_rule({
    match = { class = "com.github.hluk.copyq" },
    float = true,
    center = true,
    size = "monitor_w*0.4 monitor_h*0.5",
})
