function tidal

    set TI_DATE (command date +%d/%m/%y)
    echo $TI_DATE | wl-copy -n
    notify-send -r 810 -c regular "[NOTIFY]" "$TI_DATE > WLP"

end
