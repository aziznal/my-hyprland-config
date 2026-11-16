-- See https://wiki.hyprland.org/Configuring/Keywords/ for more
local g = require("globals")

-- see https://wiki.hyprland.org/Configuring/Variables/#binds
hl.config({
    binds = {
        -- fancy feature from i3
        workspace_back_and_forth = true,
    },
})

-- move windows around
hl.bind(g.mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(g.mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))

-- Move workspaces between monitors
hl.bind("CTRL + " .. g.mainMod .. " + comma", hl.dsp.workspace.move({ monitor = "l" }))
hl.bind("CTRL + " .. g.mainMod .. " + period", hl.dsp.workspace.move({ monitor = "r" }))

hl.bind(g.mainMod .. " + Return", hl.dsp.exec_cmd(g.terminal))
hl.bind(g.mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(g.mainMod .. " + X", hl.dsp.exec_cmd("hyprlock"))
hl.bind(g.mainMod .. " + SHIFT + x", hl.dsp.exit())
hl.bind(g.mainMod .. " + E", hl.dsp.exec_cmd(g.fileManager))
hl.bind(g.mainMod .. " + SHIFT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(g.mainMod .. " + D", hl.dsp.exec_cmd(g.menu))
hl.bind(g.mainMod .. " + SHIFT + D", hl.dsp.exec_cmd(g.commandMenu))
hl.bind(g.mainMod .. " + C", hl.dsp.exec_cmd(g.calculator))
hl.bind(g.mainMod .. " + SHIFT + C", hl.dsp.exec_cmd(g.colorPicker))
hl.bind(g.mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(g.screenshot))
hl.bind(g.hyper .. " + s", hl.dsp.exec_cmd(g.screenshotToFile))
hl.bind(g.mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(g.mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Move focus with mainMod + arrow keys
hl.bind(g.mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(g.mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(g.mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(g.mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind(g.mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(g.hyper .. " + t", hl.dsp.focus({ workspace = 1 }))
hl.bind(g.mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(g.mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(g.mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(g.hyper .. " + f", hl.dsp.focus({ workspace = 4 }))
hl.bind(g.mainMod .. " + 5", hl.dsp.focus({ workspace = 5 })) -- note: also bound to o for obsidian
hl.bind(g.mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(g.mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(g.mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(g.mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(g.hyper .. " + m", hl.dsp.focus({ workspace = 9 }))
hl.bind(g.mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(g.mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(g.mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(g.mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(g.mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(g.mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 })) -- note; also bound to o for obsidian
hl.bind(g.mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(g.mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(g.mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(g.mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(g.mainMod .. " + SHIFT + m", hl.dsp.window.move({ workspace = 9 }))
hl.bind(g.mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)
hl.bind(g.mainMod .. " + MINUS", hl.dsp.workspace.toggle_special("scratch"))
hl.bind(g.mainMod .. " + SHIFT + MINUS", hl.dsp.window.move({ workspace = "special:scratch" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(g.mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(g.mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(g.mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(g.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- float then center current window
hl.bind(g.mainMod .. " + CTRL + C", function()
    local monitor = hl.get_active_monitor()
    if monitor == nil then
        return
    end

    hl.dispatch(hl.dsp.window.float({ action = "enable" }))
    hl.dispatch(hl.dsp.window.resize({
        x = monitor.width / monitor.scale * 0.7,
        y = monitor.height / monitor.scale * 0.9,
    }))
    hl.dispatch(hl.dsp.window.center())
end)

-- convenience shortcut to unfloat window
hl.bind(g.mainMod .. " + CTRL + return", hl.dsp.window.float({ action = "toggle" }))

-- Change current audio source
-- Use pactl to adjust volume in PulseAudio.
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_raw("pactl set-sink-volume @DEFAULT_SINK@ +5% && volnoti-show $(eval $get_volume)"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_raw("pactl set-sink-volume @DEFAULT_SINK@ -5% && volnoti-show $(eval $get_volume)"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_raw("pactl set-sink-mute @DEFAULT_SINK@ toggle && volnoti-show $(eval $get_mute_status)"), { repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_raw('pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send "Mic muted"'))

-- Media keys
hl.bind("XF86AudioPlay", hl.dsp.exec_raw('playerctl play-pause && notify-send "Play/Pause"'), { repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_raw('playerctl next && notify-send "Next"'), { repeating = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_raw('playerctl prev && notify-send "Previous"'), { repeating = true })

-- pulseaudio-control next node shortcut (ctrl alt s) (OUTDATED!)
-- hl.bind("CTRL + ALT + s", hl.dsp.exec_raw("pulseaudio-control --node-blacklist alsa_output.usb-Generic_USB_Audio-00.HiFi__hw_Audio_3__sink,alsa_output.usb-Generic_USB_Audio-00.HiFi__hw_Audio_1__sink next-node"), { locked = true })

-- [[ --- flameshot (screenshots) | NOT WORKING! --- ]]
-- hl.bind("SHIFT + " .. g.mainMod .. " + s", hl.dsp.exec_cmd("flameshot"))
-- hl.bind(g.mainMod .. " + SHIFT + s", hl.dsp.exec_raw("XDG_CURRENT_DESKTOP=sway flameshot gui"))
-- hl.window_rule({ match = { class = "^(flameshot)$" }, no_anim = true })
-- hl.window_rule({ match = { class = "^(flameshot)$" }, float = true })
-- windowrulev2=fakefullscreen,class:^(flameshot)$
-- hl.window_rule({ match = { class = "^(flameshot)$" }, monitor = "0" })

-- Toggle bedroom lights
hl.bind("CTRL + ALT + grave", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "action": "toggle" }' http://192.168.1.118:8123/api/webhook/room_lights]]))
hl.bind("CTRL + ALT + 0", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "action": "increase_brightness" }' http://192.168.1.118:8123/api/webhook/room_lights]]))
hl.bind("CTRL + ALT + 9", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "action": "decrease_brightness" }' http://192.168.1.118:8123/api/webhook/room_lights]]))

hl.bind("CTRL + ALT + 1", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "color": "white" }' http://192.168.1.118:8123/api/webhook/room_lights]]))
hl.bind("CTRL + ALT + 2", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "color": "daylight" }' http://192.168.1.118:8123/api/webhook/room_lights]]))
hl.bind("CTRL + ALT + 3", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "color": "scene_1" }' http://192.168.1.118:8123/api/webhook/room_lights]]))
hl.bind("CTRL + ALT + 4", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "color": "scene_2" }' http://192.168.1.118:8123/api/webhook/room_lights]]))

hl.bind("CTRL + ALT + 7", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "action": "toggle" }' http://192.168.1.118:8123/api/webhook/ac_controls]]))
hl.bind("CTRL + ALT + 8", hl.dsp.exec_raw([[curl -X POST -H "Content-Type: application/json" -d '{ "action": "toggle_display" }' http://192.168.1.118:8123/api/webhook/ac_controls]]))
