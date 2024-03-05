function abbradd
    set S0 "abbr -a "
    set ABBR_NAME "$argv[1] "
    set ABBR_FUNCTION "'$argv[2]'"

    set FILE $HOME/.config/fish/conf.d/abbas.fish
    echo $S0$ABBR_NAME$ABBR_FUNCTION >> $FILE
    bat $FILE

end
