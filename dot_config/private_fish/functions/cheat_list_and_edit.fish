function cheat_list_and_edit
    set CHEAT_PATH (string split " " (cheat -l | fzf --reverse))
    echo $CHEAT_PATH
    cheat -e $CHEAT_PATH[1]
end
