#! /usr/bin/env fish

hyprctl keyword monitor "eDP-1, 1920x1200, 0x0, 1"

notify-send -r 810 -c clam "[CLAM]" "eDP-1 enabled"
