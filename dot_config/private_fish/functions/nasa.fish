function nasa
    set DATA_DIR $HOME/Pictures/nasa
    set SLEEP 0.5

    hyprctl dispatch exec qutebrowser -- https://apod.nasa.gov/apod/
    sleep $SLEEP

    hyprctl dispatch focuswindow org.qutebrowser.qutebrowser
    sleep $SLEEP

    keyd input K
    sleep $SLEEP

    wtype -k semicolon
    sleep $SLEEP

    wtype -k i
    sleep $SLEEP

    wtype -k a
    sleep $SLEEP

    wtype -k y -k y
    sleep $SLEEP

    cd $DATA_DIR
    sleep $SLEEP

    # fish -c cd $DATA_DIR
    kitten @ launch --type os-window --hold --title "nasa" --cwd $DATA_DIR aria2c (wl-paste)
    kitten @ close-window --self
    hyprctl dispatch focuscurrentorlast
end
