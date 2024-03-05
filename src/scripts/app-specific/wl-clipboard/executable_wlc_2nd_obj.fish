#! /bin/fish

function clip
    set j 2
    set HISTORY (cliphist list)
    set CMD $HISTORY[$j]
    set OLDCMD (echo $HISTORY[1] | cliphist decode)
    set DECODE (echo $CMD | cliphist decode)
    set MESSAGE "'$OLDCMD' > '$DECODE'"
    set TITLE "copy>"


    # dunstify $MESSAGE -u low -r 123
    echo $DECODE | wl-copy -n
end

clip $argv
