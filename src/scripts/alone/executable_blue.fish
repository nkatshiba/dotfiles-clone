#! /bin/fish

# systemctl restart bluetooth.service
hyprctl dispatch exec -- wezterm start --class bluetuith bluetuith
hyprctl dispatch exec pavucontrol
