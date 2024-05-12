function ff

    set FILE (realpath $argv)

    if string match -q -- "*home/$(whoami)*" $FILE
        set FILE (string replace -a "/home/$(whoami)/" '$HOME/' "$FILE")
    end

    set FILE_PATH $WHERE"/"$FILE

    echo $FILE | wl-copy -n
    echo $FILE ">wlc"
end
