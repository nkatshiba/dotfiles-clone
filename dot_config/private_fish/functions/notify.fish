function notify -w 'notify-send'
    set CMD 'notify-send -r 810 -c regular "[NOTIFY]" "CMD > WLP"'
    echo $CMD | wl-copy -n
    eval $CMD
end
