#! /usr/bin/env fish



set SOURCE (input "what to replace")
set TARGET (input "replace with")
# set MAIL_SPLIT (string split "@" $MAIL)
set CMD ":%s/$SOURCE/$TARGET/gc"


hyprctl dispatch exec "sleep 0.1 && wtype -- $CMD"
# hyprctl dispatch exec "sleep 0.2 && wtype -- @"
# hyprctl dispatch exec "sleep 0.3 && wtype -- $MAIL_SPLIT[2]"
kitten @ close-window --self












# notify-send -r 486 -c snips "[SNIPS] - $CMDR"
# wtype $CMD


# #! /usr/bin/env fish
#
# set CMD ":%s///gc"
# # hyprctl notify -1 5000 "rgb(fdb777)" "$CMDR"
# notify-send -r 486 -c snips "[SNIPS] - $CMDR"
# wtype $CMD
# # echo $CMD | wl-copy -n
# # wl-paste -n
