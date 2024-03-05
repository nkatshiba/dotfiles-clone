function ff

    set FILE (realpath $argv)

    # replace "/home/tildavimer" with "$HOME"
    if string match -q -- "*home/tildavimer*" $FILE
        set FILE (string replace -a '/home/tildavimer/' '$HOME/' "$FILE")
    end

    set FILE_PATH $WHERE"/"$FILE

    echo $FILE | wl-copy -n
    echo $FILE ">wlc"
end
