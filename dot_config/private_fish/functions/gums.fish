source $HOME/.config/fish/functions/clusters/gums/gums-edit.fish

function gums
    # cmd
    set CMD gum style --background="#020202" --border-background="#f4005f" --foreground="#00f495" --border double --align center --width 50  --padding "3 1" --bold --italic "_-^-_ TST-PLAYGROUND _-^-_"

    # echo
    echo "$CMD" | wl-copy -n

    $CMD


end
