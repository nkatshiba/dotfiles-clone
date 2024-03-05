function loop
    set i 0
    set div (math 360 / 15)
    echo $div
    clear -x
    while test $i -le 360
        echo $i
        set i (math $i+$div)
        sleep 0.1
    end
    # end | wl-copy && wl-paste -n

    functions loop | wl-copy -n
end
