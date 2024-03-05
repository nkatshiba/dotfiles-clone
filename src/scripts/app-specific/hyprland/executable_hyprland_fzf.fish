#! /bin/fish

# set DIR $HOME/src/scripts/configuration/
set CMDS '/home/tildavimer/src/scripts/app-specific/hyprland/cmds.txt'

# set FILE (cat $DIR$CMDS | tofi -c $HOME/.config/tofi/tofi-fzf)
set FILE (cat $CMDS | tofi -c $HOME/.config/tofi/tofi-fzf)


# set FILE (find $HOME/.config/hypr/conf.d/ -type f | tofi -c $HOME/.config/tofi/tofi-fzf)
if test -e $FILE
    nvim $FILE
end
