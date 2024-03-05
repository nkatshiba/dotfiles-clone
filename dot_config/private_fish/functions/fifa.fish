function fifa
    set DATA_DIR $HOME/.config/fish/abbreviations

    cd $DATA_DIR

    set FILE (eza --sort modified | fzf --tac)

    if test $FILE = "__NEW__"
        set NAME (gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#ffffff" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[FIFA]" --placeholder "Abbreviation name..")
        set FILE "$NAME.fish"
        echo "# $NAME" >> $FILE
        echo "abbr -a $NAME \"\"" >> $FILE
        echo "# abbr -a \"\"" >> $FILE
    end

    if test $status -eq 130
        echo $PWD
    else
        notify-send -c mako "[FIFU]" "Editing fish abbr: $FILE.."
        cme $FILE
    end
end
