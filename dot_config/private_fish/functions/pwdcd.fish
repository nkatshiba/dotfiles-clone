function pwdcd

    # vars
    set PRETTY_PATH $(wl-paste)
    set CD_PATH $PRETTY_PATH

    # replace $HOME/ with ""
    if string match -q -- "*\$HOME*" $CD_PATH
        set CD_PATH (string replace -a '$HOME/' '/home/tildavimer/' "$CD_PATH")
    end

    # replace "" with "/home/tildavimer"
    if test "$CD_PATH" = ''
        set CD_PATH /home/tildavimer
    end

    # new vars
    set PRETTY_STR $CD_PATH" >wlc"
    set CD_STR "cd> "$CD_PATH

    # prints
    echo $PRETTY_STR
    echo $CD_STR

    # cmds
    echo $PRETTY_PATH | wl-copy -n
    cd $CD_PATH

end
