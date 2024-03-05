#! /bin/fish
killall gammastep
sleep 1
hyprctl dispatch exec 'gammastep -O 1250'

