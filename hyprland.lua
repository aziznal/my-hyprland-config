
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("xrdb merge ~/.Xresources")
end)

-- dunst notification manager
-- hl.on("hyprland.start", function()
--     hl.exec_cmd("dunst -config ~/.config/i3/dunst.conf")
-- end)

-- NOTE: keep globals.lua at the top as other files depend on it
require("globals")

require("binds")
require("keyboard")
require("prettification")
require("window-rules")
require("general")
require("monitors")

require("apps.obsidian")
require("apps.browser")
require("apps.music")
require("apps.copyq")
require("apps.smile")

-- Some default env vars.
hl.env("XCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
hl.env("GTK_THEME", "Valyrian-total-steel")

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprctl setcursor cursor_theme cursor_size")
end)
