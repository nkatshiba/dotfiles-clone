#! /usr/bin/env fish

hyprctl keyword monitor "eDP-1, disable"

notify-send -r 810 -c clam "[CLAM]" "eDP-1 disabled"
