#! /usr/bin/env fish

# launch
kitty kitten @ launch --type os-window --hold --title "fzf-qbpm" fish -c 'qbpm launch (command eza $QBPM_PROFILE_DIR | fzf)' 

# notify
notify-send -c mid "[FZF-QBPM]" "launching qbpm instance.."

# close
kitten @ close-window --self $DMENU

######################################################################333
# confirm
# set MODE (gum confirm "SHOW | COPY?" --default=true --affirmative "[SHOW]" --negative "[COPY]" --prompt.bold --prompt.margin="5 0 0 20" --selected.margin="5 0 0 20" --unselected.margin="5 0 0 20" --selected.bold --unselected.faint --prompt.background="#020202" --prompt.foreground="#f9d726" --prompt.border-background="#ffffff"  --selected.background="#f4005f" --prompt.align="center"  && echo "show" || echo "copy")
