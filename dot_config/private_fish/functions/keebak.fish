function keebak
    set MOUNT_DIR /media
    set KEE_SOURCE_DIR $HOME/.dotfiles
    set KEE_TARGET_DIR kee
    set SD_CARD sdb1-usb-Generic_MassStor
    set DATE (date '+%Y-%m-%d')

    # clear
    clear -x

    echo $DATE

    # header / banner
    style [DOT-BAK]

    # cd
    cd $MOUNT_DIR/$SD_CARD/$KEE_TARGET_DIR

    # mount SD-card
    udevil mount /dev/sdb1

    # newline
    new_line

    # ls
    eza -AF1

    # newline
    new_line

    set ASK_BAK (gum confirm "Perfom bak?" --default=true --affirmative "YES" --negative "NO" --prompt.bold --selected.bold --unselected.faint --prompt.background="#020202" --prompt.foreground="#f9d726" --prompt.border-background="#ffffff" --selected.background="#f4005f" --prompt.align="center" --prompt.margin="3 0 0 5" --selected.margin="3 0 0 5" --unselected.margin="3 0 0 6" && echo "YES" || echo "NO")

    switch $ASK_BAK
        case YES
            7z a $MOUNT_DIR/$SD_CARD/$KEE_TARGET_DIR/keebak_$DATE.7z $HOME/.kee/keexc.kdbx
        case NO
            echo 2
    end

    
end
