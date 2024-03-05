function wayland

    # set ITEM $history[1]
    set ITEM (history | fzf)

    set WAYLAND_PARAMS '--enable-features=UseOzonePlatform --ozone-platform=wayland'
    set CMD "$ITEM --enable-features=UseOzonePlatform --ozone-platform=wayland"


    commandline -r $CMD

    echo $CMD | wl-copy -n



end
