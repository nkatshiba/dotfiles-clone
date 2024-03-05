#! /usr/bin/env fish

set VOL (pactl get-sink-volume @DEFAULT_SINK@ | awk -F '/' '{print substr($2, 0, length($2)-2)}' | awk '{$1=$1;print}')

notify-send -r 941 -t 500 -p -c vol "[VOL]" "$VOL(%)" -h int:value:"$VOL"
