#! /usr/bin/env fish

function fish_help_in_qute
    set QUTE qutebrowser 
    # hyprctl dispatch exec $QUTE  --target window
    # hyprctl dispatch exec [float] ($QUTE)
    # exec [float] $QUTE
    hyprctl dispatch -- exec '[float]' -- $QUTE --target window
end
