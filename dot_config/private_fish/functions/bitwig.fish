# bitwig
set DATA_BASE $HOME/Bitwig Studio
set LIB /Library

function bitwig
    jj $DATA_BASE

    set OPT (echo Rock/\nLibrary/\nProjects/\nTracks/\nPlugins/\n\*[Launch]\*| fzf)

    switch $OPT

        case Tracks/
            jj ./$OPT
        case Library/
            jj ./$OPT
        case Rock/
            jj ./Library/$OPT
        case Projects/
            jj ./$OPT
        case Plugins/
            jj ./$OPT
        case \*[Launch]\*
            hyprctl dispatch exec bitwig-studio
            notify-send -c regular "[B]" "Launching Bitwig Studio.."
            exit
    end


    clear -x

    pwdcp

    tree 1

end
