function pwdcp

    set WHEREAMI $(string replace -a "/home/tildavimer" '$HOME' "$PWD")

    if test "$WHEREAMI" = '$HOME'
        set WHEREAMI $WHEREAMI"/"
    end

    echo $WHEREAMI | wl-copy -n
    echo "Path to current directory: " $WHEREAMI
end
