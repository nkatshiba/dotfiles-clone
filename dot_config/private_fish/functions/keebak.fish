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



    7z a $MOUNT_DIR/$SD_CARD/$KEE_TARGET_DIR/keebak_$DATE.7z $HOME/.kee/keexc.kdbx

    ls -l
    
end
