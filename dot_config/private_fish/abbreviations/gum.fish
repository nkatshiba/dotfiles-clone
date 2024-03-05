# gum
abbr -a filter --position anywhere 'filter --fuzzy'
# abbr -a input 'gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#ffffff" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[WINDOW TITLE]" --placeholder "title..."'
abbr -a confirm 'gum confirm "Edit todays todo?" --default=true --affirmative "YES" --negative "NO" --prompt.bold  --selected.bold --unselected.faint --prompt.background="#020202" --prompt.foreground="#f9d726" --prompt.border-background="#ffffff" --selected.background="#f4005f" --prompt.align="center" --prompt.margin="3 0 0 5" --selected.margin="3 0 0 5" --unselected.margin="3 0 0 6" && echo "Editing.." || echo "Doing nothing.."'
