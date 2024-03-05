#! /usr/bin/env fish

set LAUNCH_DIR $HOME/src/scripts/kittens/launch/brave


cd $LAUNCH_DIR
set APP (bat list_of_launchers.txt | fzf --tac)
set APP (string split " " $APP)
eval $LAUNCH_DIR"/"$APP[2]
