#! /usr/bin/env fish

set MAIL (pass zZz/uname/edu)
set MAIL_SPLIT (string split "@" $MAIL)

hyprctl dispatch exec "sleep 0.1 && wtype -- $MAIL_SPLIT[1]"
hyprctl dispatch exec "sleep 0.2 && wtype -- @"
hyprctl dispatch exec "sleep 0.3 && wtype -- $MAIL_SPLIT[2]"
hyprctl dispatch exec "sleep 0.5 && wtype -k Tab"
# hyprctl dispatch exec "sleep 0.6 && wtype -- $MAIL_SPLIT[2]"
hyprctl dispatch exec "sleep 0.6 && $HOME/src/scripts/fuzzy-pwd-uname/main_pwd.fish"




kitten @ close-window --self
