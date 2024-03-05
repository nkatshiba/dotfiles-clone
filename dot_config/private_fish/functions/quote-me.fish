function quote-me
    set HISTORY "$history[1]"
    set DIV "\""

    set STR_1 "$HISTORY"
    set STR_2 "$DIV$HISTORY"

    echo $STR_1 | wl-copy -n

    commandline --insert $STR_2
    commandline --append $DIV
    wl-paste
end
