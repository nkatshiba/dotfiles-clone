function cpcat
    set FILE $argv
    cat $FILE | wl-copy -n
    notify-send -r 831 -c mid "[CPCAT]" "$FILE > wlc"
end
