function cas
    set CAS_DIR $HOME/mpcas/lp3_y1
    # cd $CAS_DIR
    set WORKING_DIR (eza --classify --reverse $CAS_DIR | fzf)
    cd $CAS_DIR"/"$WORKING_DIR

    clear -x
    style $WORKING_DIR
    ls
    # qutebrowser (bat .canvas.txt)
    # qutebrowser (bat .canvas.txt)

end
