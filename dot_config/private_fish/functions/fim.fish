function fim
    set CUR_DIR $HOME/mpcas/y1/lp2/fim770_tif155_dynamical_systems/src/4
    j $CUR_DIR

    cd (gum filter --fuzzy (ls))"/py"
    cd (gum filter --fuzzy (eza --only-dirs))
    clear -x
    echo $PWD
    eza
end
