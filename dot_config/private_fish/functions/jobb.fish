function jobb
    set DATA_DIR $HOME/Documents/jobb
    cd $DATA_DIR

    set FILE_PATH "$(date).txt"
    echo $FILE_PATH

    vi $FILE_PATH
    git status
end
