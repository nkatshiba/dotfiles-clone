#! /usr/bin/env fish
set CUR (echo (cliphist list)[1] | cliphist decode)
set PREV (echo (cliphist list)[2] | cliphist decode)

# dunstify -r 405 -t 1500 "WLC (previous)" "$PREV"
# dunstify -r 406 -t 1500 "WLC (current)" "$CUR"

# dunstify -r 1500 -t 1500 "[WLPd]"

notify-send -t 750 -r 100 -c wlp "$CUR"
# hyprctl notify -1 1500 "rgb(ffffff)" "( $PREV )"
# hyprctl notify -1 1500 "rgb(ff1ea3)" "$CUR"
