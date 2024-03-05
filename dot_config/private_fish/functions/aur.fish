function aur

    set QUERY "$argv"
    set SEARCH_PRE "https://aur.archlinux.org/packages?O=0&SeB=nd&K="
    set SEARCH_POST "&outdated=&SB=l&SO=d&PP=100&submit=Go"
    set URL "$SEARCH_PRE$QUERY$SEARCH_POST"
    echo $URL
    

    # hyprctl dispatch -- exec '[float]' -- qutebrowser $URL --target window
    qutebrowser $URL
end
