function fifu
    set DATA_DIR $HOME/.config/fish/functions

    cd $DATA_DIR

    set FILE (eza --sort modified | fzf --tac)

    if test $FILE = "__NEW__"
        set NAME (gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#ffffff" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[FIFU]" --placeholder "Function name..")
        set FILE "$NAME.fish"
        echo "# $NAME" >> $FILE
        echo "function $NAME" >> $FILE
        echo ""  >> $FILE
        echo "end"  >> $FILE
    end

    if test $status -eq 130
        echo $PWD
    else
        notify-send -c mako "[FIFU]" "Editing fish function: $FILE.."
        cme $FILE
    end

end
