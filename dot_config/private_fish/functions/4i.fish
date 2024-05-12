function 4i

    set IMAGE_DIR $HOME/docker/jellyfin/media/cowabonga/imgs
    set ARG "$argv"
    cd $IMAGE_DIR

    set DATE (command date +%Y-%m-%d_%H:%M:%S)

    if test -n "$ARG"
        set FILE_PATH "$ARG.png"
        aria2c -o $FILE_PATH (wl-paste)
    else
        aria2c -o "$DATE.png" (wl-paste)
    end

    kitten icat (eza --classify --sort modified -1 --reverse | head -n 1)

    eza -A | wc -l 

end
