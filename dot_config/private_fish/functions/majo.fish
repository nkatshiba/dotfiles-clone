function majo


    set MODE (gum confirm "SHOW | COPY?" --default=true --affirmative "[SHOW]" --negative "[COPY]" --prompt.bold --prompt.margin="5 0 0 20" --selected.margin="5 0 0 20" --unselected.margin="5 0 0 20" --selected.bold --unselected.faint --prompt.background="#020202" --prompt.foreground="#f9d726" --prompt.border-background="#ffffff"  --selected.background="#f4005f" --prompt.align="center"  && echo "show" || echo "copy")
    # set -g HISTORY (makoctl history | jq -r '.data[][] | select(.["app-name"].data == "Signal").body.data' | string replace -a '"' ',')
    set -g HISTORY (makoctl history | sort --reverse | jq -r '.data[][] | select(.["app-name"].data == "Signal").body.data')

    switch $MODE
        case 'show'
            # set CHOICE (string split ' ' $HISTORY)
            for ITEM in $HISTORY
                # notify-send -c signal "[SIGNAL]" "$ITEM"
                notify-send -c signal "[SIGNAL]" "$ITEM"
                # exec notify-send -e -r 941 -c signal "[SIGNAL]" "$ITEM"
                # hyprctl dispatch exec notify-send -e -r 941 -c signal "[SIGNAL]" "$ITEM"
            end
        case 'copy'
            set CHOICE (string split ' ' $HISTORY | fzf --tac)
            echo $CHOICE | wl-copy -n
            kitten @ close-window --self
    end

end
