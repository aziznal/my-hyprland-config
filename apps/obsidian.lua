local g = require("globals")

-- Autostart Obsidian
hl.on("hyprland.start", function()
    hl.exec_cmd("obsidian", { workspace = "5 silent" })
end)

hl.bind(g.hyper .. " + o", hl.dsp.focus({ workspace = 5 }))
