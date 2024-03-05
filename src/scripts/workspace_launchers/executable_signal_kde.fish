#! /usr/bin/env fish
hyprctl dispatch exec signal-desktop -- --enable-features=UseOzonePlatform --ozone-platform=wayland
sleep 1
#hyprctl dispatch exec kdeconnect-sms
hyprctl dispatch exec scrcpy
hyprctl dispatch exec $HOME/.webcatalog/Messenger/Messenger
hyprctl dispatch exec $HOME/.webcatalog/Messenger/Messenger
