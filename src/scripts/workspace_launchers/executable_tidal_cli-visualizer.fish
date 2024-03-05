#! /usr/bin/env fish
hyprctl dispatch exec tidal-hifi -- --enable-features=UseOzonePlatform --ozone-platform=wayland
sleep 1
# hyprctl dispatch exec kitty -- --override font_size=3 --title 'vis-1' vis
# kitten @ close-window --self
