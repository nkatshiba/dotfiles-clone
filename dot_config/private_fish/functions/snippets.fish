function snippets
    set SNIPPETS_DIR $HOME/src/scripts/snips/snippets

    # clear -x

    cd $SNIPPETS_DIR



    set SNIPPET (bat (eza --classify --sort modified --reverse | fzf) | sed '2q;d')

    echo $SNIPPET | wl-copy -n

    notify-send -r 496 -c snips "[SNIPS]" "$(wl-paste -n)"

    # bat (eza --classify --sort modified --reverse | fzf)
    
    # hyprctl dispatch killactive
    kitten @ close-window --self

    # cme (eza --classify --sort modified --reverse kitty.conf grab.conf | fzf)

end



# kitten @ launch --hold --type os-window --title "title" fish -c "snippets"
