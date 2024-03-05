#! /usr/bin/env fish

set PRT_DIR $HOME/prts
set PRT_PATH $PRT_DIR"/screen_$(date '+%Y-%m-%d_%A_%H.%M.%S').png"

grim -g "$(slurp -o -c '#74dde3ff' -B '#020202ff')" "$PRT_PATH"

wl-copy < $PRT_PATH

notify-send -r 889 -c chromium "[IMV]" "$PRT_PATH > WLP"

imv $PRT_PATH

