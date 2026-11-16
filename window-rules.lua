hl.window_rule({ match = { class = "org.gnome.calculator" }, float = true })
hl.window_rule({ match = { class = "blueberry.py" }, float = true })
hl.window_rule({ match = { class = "wdisplays" }, float = true })

-- ### smart gaps
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })

hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, rounding = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]" }, rounding = 0 })
-- ###

-- Disable borders when only one tile (window or group) exists
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/#smart-gaps
hl.workspace_rule({ workspace = "w[tv1]", no_border = true })
hl.window_rule({ match = { workspace = "w[tv1]" }, border_size = 0 })
