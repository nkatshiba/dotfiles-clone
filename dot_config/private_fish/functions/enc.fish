function enc

    set -l ENC_DIR $HOME/.local/share/Cryptomator/mnt
    set -l ENC_CD_STR "/.encryption mnt pts >"

    cd $ENC_DIR
    clear -x 

    gum style --foreground="#f4005f" --align left --width 50 --padding "1 1 1 1" --bold --italic "$ENC_CD_STR"

    echo -e \t $(eza -F)

    new_line

end
