-- Autostart zen in workspace 4
hl.on("hyprland.start", function()
    hl.exec_cmd("zen-browser", { workspace = "4 silent" })
end)
