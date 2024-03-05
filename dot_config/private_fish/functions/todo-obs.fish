function todo-obs
    set DATA_DIR $HOME/nts/obs/daily
    set TODAY (date '+%Y-%m-%d')
    set FILE_NAME "$TODAY.md"

    # cd
    cd $DATA_DIR

    # ls
    eza --classify --sort modified -1

    set ASK_EDIT (gum confirm "Edit todays todo?" --default=true --affirmative "YES" --negative "NO" --prompt.bold  --selected.bold --unselected.faint --prompt.background="#020202" --prompt.foreground="#f9d726" --prompt.border-background="#ffffff" --selected.background="#f4005f" --prompt.align="center" --prompt.margin="3 0 0 5" --selected.margin="3 0 0 5" --unselected.margin="3 0 0 6" && echo "YES" || echo "NO")

    switch $ASK_EDIT
        case YES
                vi $FILE_NAME
        case NO
                echo "Doing nothing.."
    end
end
