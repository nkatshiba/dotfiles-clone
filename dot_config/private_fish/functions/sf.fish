function sf -a FILE -d "Copy the basename of [FILE] argument"

    set FILE (basename $FILE)

    set 3PATH realpath --relative-to ../../ $FILE

    ## replace "/home/tildavimer" with "$HOME"
    # if string match -q -- "*home/tildavimer*" $FILE
    #    set FILE (string replace -a '/home/tildavimer/' '$HOME/' "$FILE")
    # end

    # if regular file
    if test -f $FILE
        echo $FILE | wl-copy -n
        dunstify -t 2000 WLC "$FILE" 3PATH
    else
        dunstify -t 2000 WLC "$FILE is not a regular file!"
    end

end
