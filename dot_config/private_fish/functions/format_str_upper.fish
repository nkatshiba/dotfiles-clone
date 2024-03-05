function format_str_upper
    set ORG_TITLE "$(cliphist list | fzf -d \t --with-nth 2 | cliphist decode)"

    # title
    set TITLE (string replace -a " " "_" "$ORG_TITLE")
    set TITLE (string replace -a "_-_" "-" "$TITLE")
    # set TITLE (string split -r -m 1 "-" $TITLE)
    set TITLE (string upper $TITLE[1]) 


    echo $TITLE | wl-copy -n

    notify-send -r 656 -c y2 "$TITLE"

    echo $TITLE

end
