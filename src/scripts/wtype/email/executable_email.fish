#! /usr/bin/env fish

set DATA_DIR $HOME/src/scripts/wtype/email
set EMAIL_LIST /email_list.txt

set MAIL (cat $DATA_DIR$EMAIL_LIST | fzf)
set MAIL_SPLIT (string split "@" $MAIL)


# hyprctl dispatch exec "sleep 0.5 && wtype -- $MAIL_SPLIT[1]"
# hyprctl dispatch exec "sleep 0.6 && wtype -- @"
# hyprctl dispatch exec "sleep 0.7 && wtype -- $MAIL_SPLIT[2]"

hyprctl dispatch exec "sleep 0.1 && wtype -- $MAIL_SPLIT[1]"
hyprctl dispatch exec "sleep 0.2 && wtype -- @"
hyprctl dispatch exec "sleep 0.3 && wtype -- $MAIL_SPLIT[2]"

kitten @ close-window --self
