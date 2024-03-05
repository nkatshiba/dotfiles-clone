function cols_inactive

    clear -x
    set DIR $HOME/.nb/colors/COLORS
    set COMBINED $HOME/.nb/colors/combined.md
    set SORTED $HOME/.nb/colors/SORTED

    z $DIR
    # echo $


    cat *.md >$COMBINED
    set COMBINED_ARRAY (string join ' ' (bat $COMBINED))
    echo $COMBINED_ARRAY
    set OPTION (ls $SORTED | pmenu)

    z $SORTED
    echo $OPTION

    for COL in (bat $OPTION)
        pastel color $COL
    end

end
