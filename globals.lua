local globals = {}

globals.terminal = "ghostty"
globals.fileManager = "thunar"
globals.menu = "rofi -show drun -font 'UbuntuMono Nerd Font 18' -show-icons -icon-theme 'Papirus'"
globals.commandMenu = "rofi -show run -font 'UbuntuMono Nerd Font 18'"
globals.calculator = "rofi -show calc -modi calc -no-show-match -no-sort -font 'UbuntuMono Nerd Font 18'"
globals.colorPicker = "hyprpicker -a -n -f hex"
globals.screenshot = "hyprshot -m region --clipboard-only"
globals.screenshotToFile = "hyprshot -m region -o Screenshots"

-- mapped with keyd. see /etc/keyd/default.conf
globals.hyper = "CTRL + ALT + SUPER + SHIFT"

globals.mainMod = "SUPER"

return globals
