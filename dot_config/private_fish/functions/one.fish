function one

    set BASE_DIR $HOME/onedrive
    set RECENT_DIR $HOME/onedrive/recent
    set DIR $argv[1] 

    echo "1. pwd"
    echo "2. cd"
    echo "3. bak [dir]"

    set OPT (gum choose --header="opt>" "1" "2" "3")

    switch $OPT
        case '1'
            echo $BASE_DIR | wl-copy -n
        case '2'
            cd $BASE_DIR
            echo $BASE_DIR | wl-copy -n
            ls
        case '3'
            cp -r $DIR $RECENT_DIR
            notify-send -t 2500 -r 194 "[ONE]" "$DIR > $RECENT_DIR"
    end


end
