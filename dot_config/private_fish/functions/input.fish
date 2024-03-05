function input
    set NAME $argv
    gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#ffffff" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[$(string upper $NAME)]" --placeholder "$NAME..."
end
