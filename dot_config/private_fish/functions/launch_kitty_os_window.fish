function launch_kitty_os_window
    set WIN_TITLE (gum input --header "[WINDOW TITLE]" --placeholder "title...")
    set WIN_CMD (gum input --header "[CMD]" --placeholder "cmd...")
    # set WIN_ID (kitten @ launch --hold --self --type os-window --title "title" /usr/bin/env fish -c "echo 1")
    set CMD 'kitten @ launch --hold --self --type os-window --title "$WIN_TITLE" /usr/bin/env fish -c "$WIN_CMD"'
    echo $CMD
    # set WIN_ID (kitten @ launch --hold --self --type os-window --title "$WIN_TITLE" /usr/bin/env fish -c "$WIN_CMD")
    set WIN_ID $CMD

    notify-send -r 564 -c kitty "[KITTY]" "{#$WIN_ID} - \($WIN_TITLE\) > <$WIN_CMD>"

    # kitten @ launch --match id:-1 pwd
    # kitten @ close-window --self

end
