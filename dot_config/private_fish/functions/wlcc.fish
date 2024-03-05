function wlcc
    set copystr $argv
    # echo $copystr | wl-copy -n
    echo "$copystr > wlc"
    echo "$copystr" | wl-copy -n
end
