function vimkat-open
    set HTTP "http://"
    set HTTPS "https://"
    set DOMAIN "vimkat.com/"

    set HEADER "subdomain.vimkat.com"
    set PROTOCOL (echo "$HTTP"\n"$HTTPS" | fzf --tac)

    set SUB_INPUT (gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#ffffff" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[$HEADER]" --placeholder ".vimkat.com")
    set SUB (echo $SUB_INPUT)


    # echo $SUB_INPUT

    if test -z "$SUB"
        echo "No subdomain provided (defaulting to nothing)"
        set URL "$PROTOCOL$DOMAIN"
    else if test -n "$SUB_INPUT"
        set URL "$PROTOCOL$SUB_INPUT.$DOMAIN"
    end

    # echo -e "[URL]:\v"$$URL
    echo ""
    echo "[URL]>"\t"$URL"

    switch (echo "firefox"\n"floorp" | fzf --tac)
        case firefox
                set BROWSR firefox
        case floorp
                set BROWSR floorp
    end

    set LAUNCH_CMD "$BROWSR --private-window $URL"

    hyprctl dispatch exec $LAUNCH_CMD
end
