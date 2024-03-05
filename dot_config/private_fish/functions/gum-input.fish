function gum-input
    # cmd
    set GUM_STR 'gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#f4005f" --header.bold --header.background="#f4005f" --prompt.foreground="#f4005f" --header.foreground="#020202" --header "[WINDOW TITLE]" --placeholder "title..."'

    # eval
    eval $GUM_STR

    # copy
    echo $GUM_STR | wl-copy -n 

    # paste
    wl-paste -n
end
