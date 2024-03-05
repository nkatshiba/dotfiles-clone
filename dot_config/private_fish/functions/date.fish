function date -w date
    set DATE (command date +%Y-%m-%d)
    echo $DATE
    echo $DATE | wl-copy -n
    notify-send -c regular "[DATE]" "$DATE"
end
