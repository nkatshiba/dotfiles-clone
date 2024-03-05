# fuzzy open / fzf-open
function fzfo
    set WORKING_DIR $PWD
    set DATA_DIR $HOME/src/python/fzf-open/fzf_open
    set SCRIPT $HOME/src/python/fzf-open/fzf_open/fzf-open.py

    # cd $DATA_DIR
    python $SCRIPT -d $WORKING_DIR
end
