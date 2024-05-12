function datetime -w date
    set DATE_TIME (command date +%d%m-%H%M%S)
    echo $DATE_TIME
    echo $DATE_TIME | wl-copy -n
    notify-send -c regular "[DATE_TIME]" "$DATE_TIME"
end
